//
// Created by SuperChen on 2024/12/6.
//

#ifndef RTTHREAD_UART_H
#define RTTHREAD_UART_H
#include "rtthread.h"


struct usart_ops{
    rt_err_t (*usart_init)(void);

};
static rt_device_t usart_dev;
extern struct usart_ops usart_ops;

#endif //RTTHREAD_UART_H
