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
include CMakeFiles/rtt_Compiler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rtt_Compiler.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rtt_Compiler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rtt_Compiler.dir/flags.make

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/cctype.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cctype.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cctype.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cctype.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cctype.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cctype.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cctype.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cctype.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/cstdlib.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstdlib.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstdlib.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstdlib.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstdlib.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstdlib.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstdlib.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstdlib.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/cstring.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstring.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstring.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstring.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstring.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstring.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cstring.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cstring.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/ctime.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\ctime.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\ctime.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\ctime.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\ctime.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\ctime.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\ctime.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\ctime.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/cunistd.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cunistd.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cunistd.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cunistd.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cunistd.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cunistd.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cunistd.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cunistd.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/common/cwchar.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cwchar.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cwchar.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cwchar.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cwchar.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cwchar.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\common\cwchar.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\common\cwchar.c.s

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj: CMakeFiles/rtt_Compiler.dir/flags.make
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/rt-thread/components/libc/compilers/newlib/syscalls.c
CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj: CMakeFiles/rtt_Compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj -MF CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\newlib\syscalls.c.obj.d -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\newlib\syscalls.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\newlib\syscalls.c

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\newlib\syscalls.c > CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\newlib\syscalls.c.i

CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\rt-thread\components\libc\compilers\newlib\syscalls.c -o CMakeFiles\rtt_Compiler.dir\rt-thread\components\libc\compilers\newlib\syscalls.c.s

rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cctype.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstdlib.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cstring.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/ctime.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cunistd.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/common/cwchar.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/rt-thread/components/libc/compilers/newlib/syscalls.c.obj
rtt_Compiler: CMakeFiles/rtt_Compiler.dir/build.make
.PHONY : rtt_Compiler

# Rule to build all files generated by this target.
CMakeFiles/rtt_Compiler.dir/build: rtt_Compiler
.PHONY : CMakeFiles/rtt_Compiler.dir/build

CMakeFiles/rtt_Compiler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\rtt_Compiler.dir\cmake_clean.cmake
.PHONY : CMakeFiles/rtt_Compiler.dir/clean

CMakeFiles/rtt_Compiler.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles\rtt_Compiler.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rtt_Compiler.dir/depend

