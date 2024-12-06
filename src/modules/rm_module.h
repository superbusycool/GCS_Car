 /**
 * @file rm_algorithm.h
 * @author ChuShicheng
 * @author modified by neozng
 * @brief  RM电控模块库,仅被应用层调用
 * @date 2023-09-04
 */

 /*
 * Change Logs:
 * Date            Author          Notes
 * 2023-09-04      ChuShicheng     first version
 */
#ifndef _RM_MODULE_H
#define _RM_MODULE_H

#include <rtthread.h>
#include "usr_callback.h"


#ifdef BSP_USING_DWT
#include "drv_dwt.h"
#endif /* BSP_USING_PS_MSG */
#ifdef BSP_USING_IMU
#include "imu.h"
#endif /* BSP_USING_IMU */


#endif /* _RM_MODULE_H */
