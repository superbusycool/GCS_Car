/*
* Change Logs:
* Date            Author          Notes
* 2023-09-05      ChuShicheng     first version
*/

#include "example_task.h"
#include "rm_config.h"
#include "rm_algorithm.h"
#include "rm_module.h"

#define DBG_TAG   "rm.task"
#define DBG_LVL DBG_INFO
#include <drv_gpio.h>
#include <rtdbg.h>

static struct chassis_controller_t{
    pid_obj_t *speed_pid;
}chassis_controller;

static struct gimbal_controller_t{
    pid_obj_t *speed_pid;
    pid_obj_t *angle_pid;
}gimbal_controlelr;

static dji_motor_object_t *chassis_motor;
// static dji_motor_object_t *gimbal_motor;
// #define Chassis_PWM_A_NAME        "pwm1"  /* PWM设备名称 */
// #define Chassis_PWM_A_CHANNEL     1       /* PWM通道 */
// struct rt_device_pwm *Chassis_PWM_A;      /* PWM设备句柄 */
//
// #define PULSE_ENCODER_DEV_NAME    "pulse2"    /* 脉冲编码器名称 */
// rt_device_t pulse_encoder_dev;                /* 脉冲编码器设备句柄 */
float P=30,I=0.5;
int Test_OUT;


static rt_int16_t chassis_control(dji_motor_measure_t measure){
    static rt_int16_t set = 0;
    set = pid_calculate(chassis_controller.speed_pid, measure.speed_rpm, 30);
    Test_OUT =set;
    return set;
}



static void example_init()
{
    pid_config_t chassis_speed_config = {
            .Kp = P, // 4.5
            .Ki = I,  // 0
            .Kd = 0,  // 0
            .IntegralLimit = 3000,
            .Improve = PID_Trapezoid_Intergral | PID_Integral_Limit | PID_Derivative_On_Measurement,
            .MaxOut = 12000,
    };

    chassis_controller.speed_pid = pid_register(&chassis_speed_config);
    motor_config_t chassis_motor_config = {
            .pulse_name = "pulse2",
            .motor_type = GM310,
            .id = 0,
            .controller = &chassis_controller,
    };

    chassis_motor = dji_motor_register(&chassis_motor_config, chassis_control);

}

static rt_int32_t  count = 1;

void example_thread_entry(void *argument)
{
    static float example_dt;
    static float example_start;
    LOG_I("Example Task Start");

    example_init();
 // /* 查找脉冲编码器设备 */
    // pulse_encoder_dev = rt_device_find(PULSE_ENCODER_DEV_NAME);
    // if(pulse_encoder_dev != RT_NULL)
    // {
    //     LOG_I("  Start");
    // }
    // rt_device_control(pulse_encoder_dev,PULSE_ENCODER_CMD_CLEAR_COUNT,RT_NULL);
    // /* 以只读方式打开设备 */
    // if(rt_device_open(pulse_encoder_dev, RT_DEVICE_OFLAG_RDONLY) != RT_EOK)
    // {
    //     LOG_E("open failed!");
    // }
    //
    // Chassis_PWM_A = (struct rt_device_pwm *)rt_device_find(Chassis_PWM_A_NAME);
    // if (Chassis_PWM_A == RT_NULL)
    // {
    //     rt_kprintf("pwm sample run failed! can't find %s device!\n", Chassis_PWM_A_NAME);
    //     return ;
    // }
    //
    // /* 设置PWM周期和脉冲宽度默认值 */
    // rt_pwm_set(Chassis_PWM_A, Chassis_PWM_A_CHANNEL, 20000000, 10000000);
    // /* 使能设备 */
    // rt_pwm_enable(Chassis_PWM_A, Chassis_PWM_A_CHANNEL);
    // rt_pwm_set(Chassis_PWM_A, Chassis_PWM_A_CHANNEL, 20000000, 5000000);
    //
    // rt_device_control(pulse_encoder_dev,PULSE_ENCODER_CMD_CLEAR_COUNT,RT_NULL);

    for (;;)
    {
        /* 读取脉冲编码器计数值 */
        // Test = rt_device_read(pulse_encoder_dev, 0, &count, 1);
        example_start = dwt_get_time_ms();
        int32_t tick_teat = rt_tick_get();
        /* 用于调试监测线程调度使用 */
        example_dt = dwt_get_time_ms() - example_start;
        if (example_dt > 1)
            LOG_E("Example Task is being DELAY! dt = [%f]", &example_dt);

        rt_thread_mdelay(1000);
    }
}
