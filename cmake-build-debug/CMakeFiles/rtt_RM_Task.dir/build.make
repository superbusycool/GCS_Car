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
include CMakeFiles/rtt_RM_Task.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rtt_RM_Task.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rtt_RM_Task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rtt_RM_Task.dir/flags.make

CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj: CMakeFiles/rtt_RM_Task.dir/flags.make
CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/src/task/ins/ins_task.c
CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj: CMakeFiles/rtt_RM_Task.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj -MF CMakeFiles\rtt_RM_Task.dir\src\task\ins\ins_task.c.obj.d -o CMakeFiles\rtt_RM_Task.dir\src\task\ins\ins_task.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\ins\ins_task.c

CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\ins\ins_task.c > CMakeFiles\rtt_RM_Task.dir\src\task\ins\ins_task.c.i

CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\ins\ins_task.c -o CMakeFiles\rtt_RM_Task.dir\src\task\ins\ins_task.c.s

CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj: CMakeFiles/rtt_RM_Task.dir/flags.make
CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj: D:/HNU_RM_CodeStorage/User_Define_Try4/GCS_Car/src/task/robot.c
CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj: CMakeFiles/rtt_RM_Task.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj -MF CMakeFiles\rtt_RM_Task.dir\src\task\robot.c.obj.d -o CMakeFiles\rtt_RM_Task.dir\src\task\robot.c.obj -c D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\robot.c

CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.i"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\robot.c > CMakeFiles\rtt_RM_Task.dir\src\task\robot.c.i

CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.s"
	C:\ENV\env-windows\tools\bin\..\..\tools\gnu_gcc\arm_gcc\mingw\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\src\task\robot.c -o CMakeFiles\rtt_RM_Task.dir\src\task\robot.c.s

rtt_RM_Task: CMakeFiles/rtt_RM_Task.dir/src/task/ins/ins_task.c.obj
rtt_RM_Task: CMakeFiles/rtt_RM_Task.dir/src/task/robot.c.obj
rtt_RM_Task: CMakeFiles/rtt_RM_Task.dir/build.make
.PHONY : rtt_RM_Task

# Rule to build all files generated by this target.
CMakeFiles/rtt_RM_Task.dir/build: rtt_RM_Task
.PHONY : CMakeFiles/rtt_RM_Task.dir/build

CMakeFiles/rtt_RM_Task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\rtt_RM_Task.dir\cmake_clean.cmake
.PHONY : CMakeFiles/rtt_RM_Task.dir/clean

CMakeFiles/rtt_RM_Task.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug D:\HNU_RM_CodeStorage\User_Define_Try4\GCS_Car\cmake-build-debug\CMakeFiles\rtt_RM_Task.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rtt_RM_Task.dir/depend

