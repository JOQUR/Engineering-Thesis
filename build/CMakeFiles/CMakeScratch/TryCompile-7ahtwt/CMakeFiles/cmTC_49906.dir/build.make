# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt

# Include any dependencies generated for this target.
include CMakeFiles/cmTC_49906.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cmTC_49906.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cmTC_49906.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmTC_49906.dir/flags.make

CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj: CMakeFiles/cmTC_49906.dir/flags.make
CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj: C:/Program\ Files/CMake/share/cmake-3.28/Modules/CMakeCCompilerABI.c
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --progress-dir=C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj"
	"C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj -c "C:/Program Files/CMake/share/cmake-3.28/Modules/CMakeCCompilerABI.c"

CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.i"
	"C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:/Program Files/CMake/share/cmake-3.28/Modules/CMakeCCompilerABI.c" > CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.i

CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.s"
	"C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:/Program Files/CMake/share/cmake-3.28/Modules/CMakeCCompilerABI.c" -o CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.s

# Object files for target cmTC_49906
cmTC_49906_OBJECTS = \
"CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj"

# External object files for target cmTC_49906
cmTC_49906_EXTERNAL_OBJECTS =

cmTC_49906.exe: CMakeFiles/cmTC_49906.dir/CMakeCCompilerABI.c.obj
cmTC_49906.exe: CMakeFiles/cmTC_49906.dir/build.make
cmTC_49906.exe: CMakeFiles/cmTC_49906.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --progress-dir=C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cmTC_49906.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/cmTC_49906.dir/objects.a
	"C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-ar.exe" qc CMakeFiles/cmTC_49906.dir/objects.a @CMakeFiles/cmTC_49906.dir/objects1.rsp
	"C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-gcc.exe"  -v -Wl,--whole-archive CMakeFiles/cmTC_49906.dir/objects.a -Wl,--no-whole-archive -o cmTC_49906.exe -Wl,--out-implib,libcmTC_49906.dll.a -Wl,--major-image-version,0,--minor-image-version,0 

# Rule to build all files generated by this target.
CMakeFiles/cmTC_49906.dir/build: cmTC_49906.exe
.PHONY : CMakeFiles/cmTC_49906.dir/build

CMakeFiles/cmTC_49906.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmTC_49906.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmTC_49906.dir/clean

CMakeFiles/cmTC_49906.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt C:/Users/PKier/OneDrive/Pulpit/ZUMO_ROBOT/Engineering-Thesis/build/CMakeFiles/CMakeScratch/TryCompile-7ahtwt/CMakeFiles/cmTC_49906.dir/DependInfo.cmake
.PHONY : CMakeFiles/cmTC_49906.dir/depend
