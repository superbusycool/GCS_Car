# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/rtt_libcpu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rtt_libcpu.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rtt_libcpu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rtt_libcpu.dir/flags.make

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj: CMakeFiles/rtt_libcpu.dir/flags.make
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/libcpu/arm/common/atomic_arm.c
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj: CMakeFiles/rtt_libcpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj -MF CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\atomic_arm.c.obj.d -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\atomic_arm.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\atomic_arm.c

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\atomic_arm.c > CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\atomic_arm.c.i

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\atomic_arm.c -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\atomic_arm.c.s

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj: CMakeFiles/rtt_libcpu.dir/flags.make
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/libcpu/arm/common/div0.c
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj: CMakeFiles/rtt_libcpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj -MF CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\div0.c.obj.d -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\div0.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\div0.c

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\div0.c > CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\div0.c.i

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\div0.c -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\div0.c.s

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj: CMakeFiles/rtt_libcpu.dir/flags.make
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/libcpu/arm/common/showmem.c
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj: CMakeFiles/rtt_libcpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj -MF CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\showmem.c.obj.d -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\showmem.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\showmem.c

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\showmem.c > CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\showmem.c.i

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\common\showmem.c -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\common\showmem.c.s

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.obj: CMakeFiles/rtt_libcpu.dir/flags.make
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/libcpu/arm/cortex-m4/context_gcc.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building ASM object CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\context_gcc.S.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\context_gcc.S

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\context_gcc.S > CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\context_gcc.S.i

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\context_gcc.S -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\context_gcc.S.s

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj: CMakeFiles/rtt_libcpu.dir/flags.make
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/libcpu/arm/cortex-m4/cpuport.c
CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj: CMakeFiles/rtt_libcpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj -MF CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\cpuport.c.obj.d -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\cpuport.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\cpuport.c

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\cpuport.c > CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\cpuport.c.i

CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\libcpu\arm\cortex-m4\cpuport.c -o CMakeFiles\rtt_libcpu.dir\rt-thread\libcpu\arm\cortex-m4\cpuport.c.s

rtt_libcpu: CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/atomic_arm.c.obj
rtt_libcpu: CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/div0.c.obj
rtt_libcpu: CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/common/showmem.c.obj
rtt_libcpu: CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/context_gcc.S.obj
rtt_libcpu: CMakeFiles/rtt_libcpu.dir/rt-thread/libcpu/arm/cortex-m4/cpuport.c.obj
rtt_libcpu: CMakeFiles/rtt_libcpu.dir/build.make
.PHONY : rtt_libcpu

# Rule to build all files generated by this target.
CMakeFiles/rtt_libcpu.dir/build: rtt_libcpu
.PHONY : CMakeFiles/rtt_libcpu.dir/build

CMakeFiles/rtt_libcpu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\rtt_libcpu.dir\cmake_clean.cmake
.PHONY : CMakeFiles/rtt_libcpu.dir/clean

CMakeFiles/rtt_libcpu.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles\rtt_libcpu.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rtt_libcpu.dir/depend
