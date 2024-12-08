/******************************************************************************
 * Copyright 2020-2023 The Firmament Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#ifndef GYRO_H__
#define GYRO_H__

#include "rtthread.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef BSP_USING_ADIS16467
#include "adis16467.h"
#endif /* BSP_USING_ADIS16467 */



struct imu_ops{
    rt_err_t (*imu_init)(void);
    rt_err_t (*gyro_read)(float data[3]);
    rt_err_t (*accel_read)(float data[3]);
    rt_err_t (*burst_read)(float accel[3],float gyro[3],float temp);
    float (*temp_read)(void);
};

#ifdef __cplusplus
}
#endif

#endif
