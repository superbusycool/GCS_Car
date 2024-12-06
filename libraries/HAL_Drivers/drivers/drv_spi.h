/*
 * Copyright (c) 2006-2023, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-11-5      SummerGift   first version
 */

#ifndef __DRV_SPI_H__
#define __DRV_SPI_H__

#include <rtthread.h>
#include "rtdevice.h"
#include <rthw.h>
#include <drv_common.h>
#include "drv_dma.h"
#include <ipc/completion.h>

#ifdef __cplusplus
extern "C" {
#endif

rt_err_t rt_hw_spi_device_attach(const char *bus_name, const char *device_name, rt_base_t cs_pin);

#ifdef __cplusplus
}
#endif

struct stm32_spi_config
{
    SPI_TypeDef *Instance;
    char *bus_name;
    IRQn_Type irq_type;
    struct dma_config *dma_rx, *dma_tx;
};

struct stm32_spi_device
{
    rt_uint32_t pin;
    char *bus_name;
    char *device_name;
};

#define SPI_USING_RX_DMA_FLAG   (1<<0)
#define SPI_USING_TX_DMA_FLAG   (1<<1)

/* stm32 spi dirver class */
struct stm32_spi
{
    SPI_HandleTypeDef handle;
    struct stm32_spi_config *config;
    struct rt_spi_configuration *cfg;

    struct
    {
        DMA_HandleTypeDef handle_rx;
        DMA_HandleTypeDef handle_tx;
    } dma;

    rt_uint8_t spi_dma_flag;
    struct rt_spi_bus spi_bus;

    struct rt_completion cpt;
};

#define SPI_DIR_READ  0x80
#define SPI_DIR_WRITE 0x00

/**
 * This function write a 8 bit reg.
 *
 * @param device the SPI device attached to SPI bus
 *
 * @param reg Register address
 *
 * @param val The value to be written
 *
 * @return RT_EOK if write successfully.
 */
rt_inline rt_err_t spi_write_reg8(rt_device_t spi_device, uint8_t reg, uint8_t val)
{
    uint8_t buffer[2];
    rt_size_t w_byte;

    buffer[0] = SPI_DIR_WRITE | reg;
    buffer[1] = val;

    w_byte = rt_spi_transfer((struct rt_spi_device*)spi_device, buffer, NULL, 2);

    return (w_byte == 2) ? RT_EOK : RT_ERROR;
}
/**
 * This function read a 8 bit reg.
 *
 * @param device the SPI device attached to SPI bus
 *
 * @param reg Register address
 *
 * @param buffer Buffer of read data
 *
 * @return RT_EOK if read successfully.
 */
rt_inline rt_err_t spi_read_reg8(rt_device_t spi_device, uint8_t reg, uint8_t* buffer)
{
    uint8_t reg_addr;

    reg_addr = SPI_DIR_READ | reg;

    return rt_spi_send_then_recv((struct rt_spi_device*)spi_device, (void*)&reg_addr, 1, (void*)buffer, 1);
}

/**
 * This function read multiple contiguous 8 bit regs.
 *
 * @param device the SPI device attached to SPI bus
 *
 * @param reg Start register address
 *
 * @param buffer Buffer of read data
 *
 * @param len The number of read registers
 *
 * @return RT_EOK if read successfully.
 */
rt_inline rt_err_t spi_read_multi_reg8(rt_device_t spi_device, uint8_t reg, uint8_t* buffer, uint8_t len)
{
    uint8_t reg_addr;

    reg_addr = SPI_DIR_READ | reg;

    return rt_spi_send_then_recv((struct rt_spi_device*)spi_device, (void*)&reg_addr, 1, (void*)buffer, len);
}

#endif /*__DRV_SPI_H__ */
