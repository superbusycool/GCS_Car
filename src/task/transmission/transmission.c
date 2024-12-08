//
// Created by SuperChen on 2024/12/8.
//

#include "transmission.h"
#include "drv_gpio.h"
#include <rtdbg.h>
#include "rm_task.h"
#include "rm_module.h"

/* -------------------------------- �̼߳�ͨѶ������� ------------------------------- */
static struct ins_msg ins_data;
/* -------------------------------- �̼߳�ͨѶ������� ------------------------------- */
static publisher_t *pub_trans;
static subscriber_t *sub_ins;
static void trans_sub_pull(void);
static void trans_sub_init(void);

static rt_uint32_t heart_dt;
#define HEART_BEAT 500 //ms

void Send_to_damiao(TransTypeDef data_r);
void pack_Trans(TransTypeDef *frame, float yaw, float pitch,float roll);
void Check_Trans(TransTypeDef *frame);

TransTypeDef Trans_tx_data={
        .HEAD = 0XFF,
        .D_ADDR = Damiao,
        .ID = IMU,
        .LEN = FRAME_Trans_LEN,
        .DATA={0},
        .SC = 0,
        .AC = 0,
};
/**
 * @brief trans �߳������ж����߳�ʼ�����������������������������ӣ�
 */
static void trans_sub_init(void)
{
    sub_ins = sub_register("ins_msg", sizeof(struct ins_msg));

}

/**
 * @brief trans �߳������ж����߻�ȡ���»��⣨�������������������������ӣ�
 */
static void trans_sub_pull(void)
{
    sub_get_msg(sub_ins, &ins_data);
}

/* --------------------------------- ͨѶ�߳���� --------------------------------- */
static float trans_dt;

void transmission_task_entry(void* argument)
{
    static float trans_start;
    static float heart_start;

    usart_ops.usart_init();//��ʼ��uartX

    /*�������ݳ�ʼ��*/
    trans_sub_init();

    LOG_I("Transmission Task Start");
    while (1)
    {
        trans_start = dwt_get_time_ms();
        /*�������ݸ���*/
        trans_sub_pull();//���ĵ�imu����
/*--------------------------------------------------������Ҫ���͵�����--------------------------------- */
//        if((dwt_get_time_ms()-heart_dt)>=HEART_BEAT)
//        {
//            rt_device_close(usart_dev);
//            rt_device_open(usart_dev, RT_DEVICE_FLAG_INT_RX);
//            heart_dt=dwt_get_time_ms();
//        }//���ճ�������,��������

        Send_to_damiao(Trans_tx_data);

        /* ���ڵ��Լ���̵߳���ʹ�� */
        trans_dt = dwt_get_time_ms() - trans_start;
        if (trans_dt > 1)
            LOG_E("Transmission Task is being DELAY! dt = [%f]", &trans_dt);
        rt_thread_mdelay(1);
    }
}

void Send_to_damiao(TransTypeDef data_r)
{
    /*�������*/
    pack_Trans(&data_r, ins_data.yaw, ins_data.pitch, ins_data.roll);
    Check_Trans(&data_r);

    rt_device_write(usart_dev, 0, (uint8_t*)&data_r, sizeof(data_r));
}

void pack_Trans(TransTypeDef *frame, float yaw, float pitch,float roll)
{
    int8_t Trans_tx_buffer[FRAME_Trans_LEN] = {0} ;
    int32_t Trans_data = 0;
    uint32_t *Trans = (uint32_t *)&Trans_data;//����ת��

    Trans_tx_buffer[0] = 0;
    Trans_data = yaw * 1000;
    Trans_tx_buffer[1] = *Trans;
    Trans_tx_buffer[2] = *Trans >> 8;
    Trans_tx_buffer[3] = *Trans >> 16;
    Trans_tx_buffer[4] = *Trans >> 24;
    Trans_data = pitch * 1000;
    Trans_tx_buffer[5] = *Trans;
    Trans_tx_buffer[6] = *Trans >> 8;
    Trans_tx_buffer[7] = *Trans >> 16;
    Trans_tx_buffer[8] = *Trans >> 24;
    Trans_data = roll *1000;
    Trans_tx_buffer[9] = *Trans;
    Trans_tx_buffer[10] = *Trans >> 8;
    Trans_tx_buffer[11] = *Trans >> 16;
    Trans_tx_buffer[12] = *Trans >> 24;

    memcpy(&frame->DATA[0], Trans_tx_buffer,13);

    frame->LEN = FRAME_Trans_LEN;
}

void Check_Trans(TransTypeDef *frame)
{
    uint8_t sum = 0;
    uint8_t add = 0;

    sum += frame->HEAD;
    sum += frame->D_ADDR;
    sum += frame->ID;
    sum += frame->LEN;
    add += sum;

    for (int i = 0; i < frame->LEN; i++)
    {
        sum += frame->DATA[i];
        add += sum;
    }

    frame->SC = sum & 0xFF;
    frame->AC = add & 0xFF;
}//��У�鸽��У��
