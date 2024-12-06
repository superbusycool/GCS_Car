/*
* Change Logs:
* Date            Author          Notes
* 2023-08-23      ChuShicheng     first version
*/
#ifndef _RM_CONFIG_H
#define _RM_CONFIG_H


#define CPU_FREQUENCY 180     /* CPU主频(mHZ) */

/* 底盘和云台分别对应的 can 设备名称 */
#define CAN_CHASSIS    "can1"
#define CAN_GIMBAL     "can2"



/* ADIS16467所挂载的 SPI 设备名称及 CS 引脚 */
#define SPI_ADIS16467        "spi1"
#define SPI_ADIS16467_CS     rt_pin_get("PA.4")  // Nss/cs   PA4


/* 弹仓盖舵机所挂载的 PWM 设备及通道号 */
#define PWM_COVER        "pwm1"
#define PWM_COVER_CH     2

/* 遥控器所挂载的 usart 设备名称 */
#define USART_RC       "uart1"



#endif /* _RM_CONFIG_H */
