//
// Created by SuperChen on 2024/12/6.
//

#include "uart.h"
#include <rtthread.h>
#include <rtdevice.h>
#include "rm_config.h"
#include <rtdbg.h>



struct serial_configure config = RT_SERIAL_CONFIG_DEFAULT;

static rt_err_t USART_Send_init(){

    usart_dev = rt_device_find(Usart_Name);
    RT_ASSERT(usart_dev != NULL);
    {
        config.baud_rate = BAUD_RATE_115200;        // 修改波特率为 9600
        config.data_bits = DATA_BITS_8;           // 数据位 8
        config.stop_bits = STOP_BITS_2;           // 停止位 1
        config.bufsz     = 128;                // 修改缓冲区 接收区buff size 为 128
        config.parity    = PARITY_NONE;           // 无奇偶校验位
        config.bit_order = BIT_ORDER_LSB;
        config.invert    = NRZ_NORMAL;
        config.reserved  = 4;                //保留位

        // 应用配置到串口设备上
        rt_device_control(usart_dev, RT_DEVICE_CTRL_CONFIG, &config);
        // 以非阻塞模式打开串口设备（用于发送）
        rt_device_open(usart_dev, RT_DEVICE_FLAG_DMA_TX);


    }

}



struct usart_ops usart_ops = {
        .usart_init = USART_Send_init,
};