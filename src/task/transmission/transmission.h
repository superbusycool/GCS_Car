//
// Created by SuperChen on 2024/12/8.
//

#ifndef RTTHREAD_TRANSMISSION_H
#define RTTHREAD_TRANSMISSION_H

#include "rtthread.h"

#define FRAME_Trans_LEN 25         /* 控制数据长度 */
#define Damiao   0x01
#define IMU      0x20   //用户自定义
/**
  * @brief  控制通讯帧结构体
  */
typedef  struct
{
    rt_uint8_t HEAD;  				    /*! 帧头 */
    rt_uint8_t D_ADDR;                 /*! 目标地址 */
    rt_uint8_t ID;                     /*! 功能码 */
    rt_uint8_t LEN;                    /*! 数据长度 */
    rt_int8_t DATA[FRAME_Trans_LEN];    /*! 数据内容 */
    rt_uint8_t SC;                     /*! 和校验 */
    rt_uint8_t AC;                     /*! 附加校验 */
}__attribute__((packed)) TransTypeDef;

#endif //RTTHREAD_TRANSMISSION_H
