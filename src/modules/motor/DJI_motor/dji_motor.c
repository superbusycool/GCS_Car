 /*
 * Change Logs:
 * Date            Author          Notes
 * 2023-08-23      ChuShicheng     first version
 */
#include "dji_motor.h"
#include "rm_config.h"
#include "usr_callback.h"

#define DBG_TAG   "dji.motor"
#define DBG_LVL DBG_INFO
#include <rtdbg.h>

#define DJI_MOTOR_CNT 14             // 默认波特率下，实测挂载电机极限数量

/* 滤波系数设置为1的时候即关闭滤波 */
#define SPEED_SMOOTH_COEF 0.85f      // 最好大于0.85
#define CURRENT_SMOOTH_COEF 0.9f     // 必须大于0.9
#define ECD_ANGLE_COEF_GM310 0.338028f // (360/8192),将编码器值转化为角度制
#define GM310_ECD_RATE 1065.0f    //每圈对应的编码器变化量

static uint8_t idx = 0; // register idx,是该文件的全局电机索引,在注册时使用
/* DJI电机的实例,此处仅保存指针,内存的分配将通过电机实例初始化时通过malloc()进行 */
static dji_motor_object_t *dji_motor_obj[DJI_MOTOR_CNT] = {NULL};

static uint32_t Motor_DWT_CNT = 0;

#define PWM_DEV_NAME        "pwm1"  /* Chassis PWM设备名称 */
struct rt_device_pwm *chassis_pwm_dev;      /* PWM设备句柄 */


rt_base_t Chassis_Motor_Pin1[4] = {Chassis_A1 , Chassis_B1, Chassis_C1, Chassis_D1};
rt_base_t Chassis_Motor_Pin2[4] = {Chassis_A2 , Chassis_B2, Chassis_C2, Chassis_D2};


void GM310_Set_Output(rt_int16_t output , dji_motor_object_t* motor)
{
    rt_bool_t direction_1 = 0 ,direction_2 = 0 , Channel = motor->id; //设置方向通道ID
    if(output > 0)
    {
        direction_1 = 1;
        direction_2 = 0;
    }

    else if(output < 0)
    {
        direction_1 = 0;
        direction_2 = 1;
    }
    else
    {
        direction_1 = 0;
        direction_2 = 0;
    }
    rt_pin_write(Chassis_Motor_Pin1[Channel], direction_1);
    rt_pin_write(Chassis_Motor_Pin2[Channel], direction_2);
    rt_pwm_set(chassis_pwm_dev,Channel+1,10000000,abs(output)*1000);
    rt_pwm_enable(chassis_pwm_dev, Channel+1);

}

/**
 * @brief 根据返回的can_object对反馈报文进行解析
 *
 * @param object 收到数据的object,通过遍历与所有电机进行对比以选择正确的实例
 */
static void decode_dji_motor(dji_motor_object_t *motor)
{
    dji_motor_measure_t *measure = &motor->measure; // measure要多次使用,保存指针减小访存开销
    
    // rt_timer_start(motor->timer);  // 重置电机定时器

    // 解析数据
    rt_device_read(motor->pulse_dev,0,&measure->ecd,1);
    measure->total_angle = measure->ecd*ECD_ANGLE_COEF_GM310;
    measure->speed_rpm = (1.0f - SPEED_SMOOTH_COEF) * measure->speed_rpm + SPEED_SMOOTH_COEF *
        (float)(measure->ecd - measure->last_ecd)/(dwt_get_delta(&Motor_DWT_CNT)*GM310_ECD_RATE)*60;
    measure->last_ecd = measure->ecd;
}



void dji_motor_relax(dji_motor_object_t *motor)
{
    motor->stop_flag = MOTOR_STOP;
}

void dji_motor_enable(dji_motor_object_t *motor)
{
    motor->stop_flag = MOTOR_ENALBED;
}


void dji_motor_disable(dji_motor_object_t *motor)
{
    motor->stop_flag = MOTOR_STOP;
}


// 运算所有电机实例的控制器,发送控制报文
void dji_motor_control()
{
    dji_motor_object_t *motor;
    dji_motor_measure_t measure;
    uint8_t group, num; // 电机组号和组内编号
    int16_t set = 0; // 电机控制器计算得到的输出值
    uint8_t size = 0;
    // 遍历所有电机实例,运行控制算法并填入报文
    for (size_t i = 0; i < idx; ++i)
    {
        motor = dji_motor_obj[i];
        decode_dji_motor(motor);
        measure = motor->measure;
        set = motor->control(measure); // 调用对接的电机控制器计算

        // 若该电机处于停止状态,直接将buff置零
        if (motor->stop_flag == MOTOR_STOP)
            for(int8_t k = 0; k < 4; ++k)
                set = 0;
        GM310_Set_Output(set,motor);

    }
}

/**
 * @brief 电机初始化,返回一个电机实例
 * @param config 电机配置
 * @return dji_motor_object_t* 电机实例指针
 */
dji_motor_object_t *dji_motor_register(motor_config_t *config, void *control)
{
    dji_motor_object_t *object = (dji_motor_object_t *)rt_malloc(sizeof(dji_motor_object_t));
    rt_memset(object, 0, sizeof(dji_motor_object_t));

    // 对接用户配置的 motor_config
    object->motor_type = config->motor_type;                         // 6020 or 2006 or 3508
    object->id = config->id;                                   // 电机接收报文的ID
    object->control = control;                                       // 电机控制器执行





    // // 电机离线检测定时器相关
    // object->timer = rt_timer_create("dji_motor",
    //                          motor_lost_callback,
    //                          object, 20,
    //                          RT_TIMER_FLAG_PERIODIC);
    // rt_timer_start(object->timer);
    #define PWM_DEV_NAME        "pwm1"  /* PWM设备名称 */
    /* 查找设备 */
    chassis_pwm_dev = (struct rt_device_pwm *)rt_device_find(PWM_DEV_NAME);
    if (chassis_pwm_dev == RT_NULL)
    {
        rt_kprintf("pwm sample run failed! can't find %s device!\n", PWM_DEV_NAME);
        return RT_ERROR;
    }

    if (object->motor_type == GM310)
    {
        rt_pin_mode(Chassis_Motor_Pin1[object->id], PIN_MODE_OUTPUT);
        rt_pin_mode(Chassis_Motor_Pin2[object->id], PIN_MODE_OUTPUT);

        /* 查找 编码器 设备 */
        object->pulse_dev = rt_device_find(config->pulse_name);
        rt_device_control(object->pulse_dev,PULSE_ENCODER_CMD_CLEAR_COUNT,RT_NULL); //清零
        /* 以只读方式打开设备 */
        if(rt_device_open(object->pulse_dev, RT_DEVICE_OFLAG_RDONLY) != RT_EOK)
        {
            LOG_E("open failed!");
        }
        rt_device_control(object->pulse_dev,PULSE_ENCODER_CMD_CLEAR_COUNT,RT_NULL); //清零

    }

    dji_motor_enable(object);
    dji_motor_obj[idx++] = object;
    return object;
}
