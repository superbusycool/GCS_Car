CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_PROCESSOR cortex-m4)
#SET(CMAKE_VERBOSE_MAKEFILE ON)

SET(CMAKE_EXPORT_COMPILE_COMMANDS ON)

SET(CMAKE_C_COMPILER "C:/ENV/env-windows/tools/bin/../../tools/gnu_gcc/arm_gcc/mingw/bin/arm-none-eabi-gcc.exe")
SET(CMAKE_ASM_COMPILER "C:/ENV/env-windows/tools/bin/../../tools/gnu_gcc/arm_gcc/mingw/bin/arm-none-eabi-gcc.exe")
SET(CMAKE_C_FLAGS " -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g")
SET(CMAKE_ASM_FLAGS " -c -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -x assembler-with-cpp -Wa,-mimplicit-it=thumb  -gdwarf-2")
SET(CMAKE_C_COMPILER_WORKS TRUE)

SET(CMAKE_CXX_COMPILER "C:/ENV/env-windows/tools/bin/../../tools/gnu_gcc/arm_gcc/mingw/bin/arm-none-eabi-g++.exe")
SET(CMAKE_CXX_FLAGS " -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g")
SET(CMAKE_CXX_COMPILER_WORKS TRUE)

SET(CMAKE_OBJCOPY "C:/ENV/env-windows/tools/bin/../../tools/gnu_gcc/arm_gcc/mingw/bin/arm-none-eabi-objcopy.exe")
SET(CMAKE_SIZE "C:/ENV/env-windows/tools/bin/../../tools/gnu_gcc/arm_gcc/mingw/bin/arm-none-eabi-size.exe")

SET(CMAKE_EXE_LINKER_FLAGS " -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wl,--gc-sections,-Map=rt-thread.map,-cref,-u,Reset_Handler -T ${CMAKE_SOURCE_DIR}/board/linker_scripts/link.lds -Wl,--gc-sections,--print-memory-usage")

SET(CMAKE_C_STANDARD 11)
SET(CMAKE_CXX_STANDARD 17)

PROJECT(rtthread C CXX ASM)

INCLUDE_DIRECTORIES(
	applications
	rt-thread/components/libc/compilers/common/include
	rt-thread/components/libc/compilers/newlib
	rt-thread/components/drivers/include
	rt-thread/components/drivers/spi
	rt-thread/components/drivers/spi/sfud/inc
	board
	board/CubeMX_Config/Inc
	board/ports
	libraries/HAL_Drivers/drivers
	libraries/HAL_Drivers/drivers/config
	libraries/HAL_Drivers
	libraries/HAL_Drivers/CMSIS/Include
	rt-thread/components/finsh
	.
	rt-thread/include
	rt-thread/libcpu/arm/common
	rt-thread/libcpu/arm/cortex-m4
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Inc
	libraries/STM32F4xx_HAL/CMSIS/Device/ST/STM32F4xx/Include
	rt-thread/components/libc/posix/io/epoll
	rt-thread/components/libc/posix/io/eventfd
	rt-thread/components/libc/posix/io/poll
	rt-thread/components/libc/posix/ipc
	src/algorithm
	src/algorithm/user_lib
	src/algorithm/pid
	src/algorithm/QuaternionEKF
	src/algorithm/filter
	src/algorithm/kalman_filter
	src/algorithm/ramp
	src/algorithm/arm_math
	src/modules
	src/modules/imu
	src/modules/imu/ADIS16467
	src/modules/dwt
	src/modules/msg
	src/modules/UART
	src/task
	src/task/ins
	rt-thread/components/drivers/smp
	src
)

ADD_DEFINITIONS(
	-DARM_MATH_CM4
	-DRT_USING_LIBC
	-DRT_USING_NEWLIBC
	-DSTM32F407xx
	-DUSE_HAL_DRIVER
	-D_POSIX_C_SOURCE=1
	-D__RTTHREAD__
)

# Library source files
SET(RT_APPLICATIONS_SOURCES
	applications/main.c
        src/task/transmission/transmission.c
        src/task/transmission/transmission.h
)

SET(RT_COMPILER_SOURCES
	rt-thread/components/libc/compilers/common/cctype.c
	rt-thread/components/libc/compilers/common/cstdlib.c
	rt-thread/components/libc/compilers/common/cstring.c
	rt-thread/components/libc/compilers/common/ctime.c
	rt-thread/components/libc/compilers/common/cunistd.c
	rt-thread/components/libc/compilers/common/cwchar.c
	rt-thread/components/libc/compilers/newlib/syscalls.c
)

SET(RT_DEVICEDRIVERS_SOURCES
	rt-thread/components/drivers/core/device.c
	rt-thread/components/drivers/hwtimer/hwtimer.c
	rt-thread/components/drivers/ipc/completion_comm.c
	rt-thread/components/drivers/ipc/completion_up.c
	rt-thread/components/drivers/ipc/condvar.c
	rt-thread/components/drivers/ipc/dataqueue.c
	rt-thread/components/drivers/ipc/pipe.c
	rt-thread/components/drivers/ipc/ringblk_buf.c
	rt-thread/components/drivers/ipc/ringbuffer.c
	rt-thread/components/drivers/ipc/waitqueue.c
	rt-thread/components/drivers/ipc/workqueue.c
	rt-thread/components/drivers/misc/pulse_encoder.c
	rt-thread/components/drivers/misc/rt_drv_pwm.c
	rt-thread/components/drivers/pin/dev_pin.c
	rt-thread/components/drivers/rtc/dev_rtc.c
	rt-thread/components/drivers/serial/dev_serial.c
	rt-thread/components/drivers/spi/dev_spi.c
	rt-thread/components/drivers/spi/dev_spi_core.c
	rt-thread/components/drivers/spi/dev_spi_flash_sfud.c
	rt-thread/components/drivers/spi/sfud/src/sfud.c
	rt-thread/components/drivers/spi/sfud/src/sfud_sfdp.c
)

SET(RT_DRIVERS_SOURCES
	board/CubeMX_Config/Src/stm32f4xx_hal_msp.c
	board/board.c
	libraries/HAL_Drivers/drivers/drv_gpio.c
	libraries/HAL_Drivers/drivers/drv_spi.c
	libraries/HAL_Drivers/drivers/drv_usart.c
	libraries/HAL_Drivers/drv_common.c
	libraries/STM32F4xx_HAL/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s
)

SET(RT_FINSH_SOURCES
	rt-thread/components/finsh/shell.c
	rt-thread/components/finsh/msh_parse.c
	rt-thread/components/finsh/cmd.c
	rt-thread/components/finsh/msh.c
)

SET(RT_KERNEL_SOURCES
	rt-thread/src/clock.c
	rt-thread/src/components.c
	rt-thread/src/cpu_up.c
	rt-thread/src/defunct.c
	rt-thread/src/idle.c
	rt-thread/src/ipc.c
	rt-thread/src/irq.c
	rt-thread/src/klibc/kerrno.c
	rt-thread/src/klibc/kstdio.c
	rt-thread/src/klibc/kstring.c
	rt-thread/src/kservice.c
	rt-thread/src/mem.c
	rt-thread/src/mempool.c
	rt-thread/src/object.c
	rt-thread/src/scheduler_comm.c
	rt-thread/src/scheduler_up.c
	rt-thread/src/thread.c
	rt-thread/src/timer.c
)

SET(RT_LIBCPU_SOURCES
	rt-thread/libcpu/arm/common/atomic_arm.c
	rt-thread/libcpu/arm/common/div0.c
	rt-thread/libcpu/arm/common/showmem.c
	rt-thread/libcpu/arm/cortex-m4/context_gcc.S
	rt-thread/libcpu/arm/cortex-m4/cpuport.c
)

SET(RT_LIBRARIES_SOURCES
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_crc.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rng.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_qspi.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_lptim.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	libraries/STM32F4xx_HAL/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cec.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp_ex.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc_ex.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc.c
	libraries/STM32F4xx_HAL/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
)

SET(RT_POSIX_SOURCES
)

SET(RT_RM_ALGORITHMS_SOURCES
	src/algorithm/pid/pid.c
	src/algorithm/user_lib/user_lib.c
	src/algorithm/QuaternionEKF/QuaternionEKF.c
	src/algorithm/ramp/ramp.c
	src/algorithm/filter/filter32.c
	src/algorithm/kalman_filter/kalman_filter.c
)

SET(RT_RM_MODULES_SOURCES
	src/modules/msg/drv_msg.c
	src/modules/usr_callback.c
	src/modules/dwt/drv_dwt.c
	src/modules/imu/ADIS16467/adis16467.c
	src/modules/UART/uart.c
)

SET(RT_RM_TASK_SOURCES
	src/task/ins/ins_task.c
	src/task/robot.c
)

SET(RT_SMP_SOURCES
)

SET(RT_SRC_SOURCES
)

# Library search paths
SET(RT_RM_ALGORITHMS_LINK_DIRS
	D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/src/algorithm/arm_math
)

# Library local macro definitions
SET(RT_DEVICEDRIVERS_DEFINES
	__RT_IPC_SOURCE__
)

SET(RT_KERNEL_DEFINES
	__RT_KERNEL_SOURCE__
)

# Library dependencies
SET(RT_COMPILER_LIBS
	c
	m
)

SET(RT_RM_ALGORITHMS_LIBS
	libarm_cortexM4lf_math.a
)

# Libraries
ADD_LIBRARY(rtt_Compiler OBJECT ${RT_COMPILER_SOURCES})
ADD_LIBRARY(rtt_DeviceDrivers OBJECT ${RT_DEVICEDRIVERS_SOURCES})
ADD_LIBRARY(rtt_Drivers OBJECT ${RT_DRIVERS_SOURCES})
ADD_LIBRARY(rtt_Finsh OBJECT ${RT_FINSH_SOURCES})
ADD_LIBRARY(rtt_Kernel OBJECT ${RT_KERNEL_SOURCES})
ADD_LIBRARY(rtt_libcpu OBJECT ${RT_LIBCPU_SOURCES})
ADD_LIBRARY(rtt_Libraries OBJECT ${RT_LIBRARIES_SOURCES})
ADD_LIBRARY(rtt_RM_Algorithms OBJECT ${RT_RM_ALGORITHMS_SOURCES})
ADD_LIBRARY(rtt_RM_Modules OBJECT ${RT_RM_MODULES_SOURCES})
ADD_LIBRARY(rtt_RM_Task OBJECT ${RT_RM_TASK_SOURCES})

# Interface libraries
ADD_LIBRARY(rtt_POSIX INTERFACE)
ADD_LIBRARY(rtt_smp INTERFACE)
ADD_LIBRARY(rtt_Src INTERFACE)

# Private macros
TARGET_COMPILE_DEFINITIONS(rtt_DeviceDrivers PRIVATE ${RT_DEVICEDRIVERS_DEFINES})
TARGET_COMPILE_DEFINITIONS(rtt_Kernel PRIVATE ${RT_KERNEL_DEFINES})

# Interface library search paths
TARGET_LINK_DIRECTORIES(rtt_RM_Algorithms INTERFACE ${RT_RM_ALGORITHMS_LINK_DIRS})
TARGET_LINK_LIBRARIES(rtt_Compiler INTERFACE ${RT_COMPILER_LIBS})
TARGET_LINK_LIBRARIES(rtt_RM_Algorithms INTERFACE ${RT_RM_ALGORITHMS_LIBS})

ADD_EXECUTABLE(${CMAKE_PROJECT_NAME}.elf ${RT_APPLICATIONS_SOURCES})
TARGET_LINK_LIBRARIES(${CMAKE_PROJECT_NAME}.elf
	rtt_Compiler
	rtt_DeviceDrivers
	rtt_Drivers
	rtt_Finsh
	rtt_Kernel
	rtt_libcpu
	rtt_Libraries
	rtt_RM_Algorithms
	rtt_RM_Modules
	rtt_RM_Task
	rtt_POSIX
	rtt_smp
	rtt_Src
)

ADD_CUSTOM_COMMAND(TARGET ${CMAKE_PROJECT_NAME}.elf POST_BUILD 
	COMMAND ${CMAKE_OBJCOPY} -O ihex ${CMAKE_PROJECT_NAME}.elf rtthread.hex
	COMMAND ${CMAKE_SIZE} ${CMAKE_PROJECT_NAME}.elf
	COMMAND ${CMAKE_OBJCOPY} -O binary ${CMAKE_PROJECT_NAME}.elf rtthread.bin
	COMMAND ${CMAKE_SIZE} ${CMAKE_PROJECT_NAME}.elf
)

# if custom.cmake is exist, add it
if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/custom.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/custom.cmake)
endif()
