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
        config.baud_rate = BAUD_RATE_115200;        // �޸Ĳ�����Ϊ 9600
        config.data_bits = DATA_BITS_8;           // ����λ 8
        config.stop_bits = STOP_BITS_2;           // ֹͣλ 1
        config.bufsz     = 128;                // �޸Ļ����� ������buff size Ϊ 128
        config.parity    = PARITY_NONE;           // ����żУ��λ
        config.bit_order = BIT_ORDER_LSB;
        config.invert    = NRZ_NORMAL;
        config.reserved  = 4;                //����λ

        // Ӧ�����õ������豸��
        rt_device_control(usart_dev, RT_DEVICE_CTRL_CONFIG, &config);
        // �Է�����ģʽ�򿪴����豸�����ڷ��ͣ�
        rt_device_open(usart_dev, RT_DEVICE_FLAG_DMA_TX);


    }

}



struct usart_ops usart_ops = {
        .usart_init = USART_Send_init,
};