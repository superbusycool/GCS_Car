//
// Created by SuperChen on 2024/12/8.
//

#ifndef RTTHREAD_TRANSMISSION_H
#define RTTHREAD_TRANSMISSION_H

#include "rtthread.h"

#define FRAME_Trans_LEN 25         /* �������ݳ��� */
#define Damiao   0x01
#define IMU      0x20   //�û��Զ���
/**
  * @brief  ����ͨѶ֡�ṹ��
  */
typedef  struct
{
    rt_uint8_t HEAD;  				    /*! ֡ͷ */
    rt_uint8_t D_ADDR;                 /*! Ŀ���ַ */
    rt_uint8_t ID;                     /*! ������ */
    rt_uint8_t LEN;                    /*! ���ݳ��� */
    rt_int8_t DATA[FRAME_Trans_LEN];    /*! �������� */
    rt_uint8_t SC;                     /*! ��У�� */
    rt_uint8_t AC;                     /*! ����У�� */
}__attribute__((packed)) TransTypeDef;

#endif //RTTHREAD_TRANSMISSION_H
