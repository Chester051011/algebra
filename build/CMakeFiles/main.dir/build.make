# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = D:\Lib\Cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\Lib\Cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\cpp\test1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\cpp\test1\build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/algebra.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/algebra.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/algebra.obj: E:/cpp/test1/src/algebra.cpp
CMakeFiles/main.dir/src/algebra.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\cpp\test1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/src/algebra.obj"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/algebra.obj -MF CMakeFiles\main.dir\src\algebra.obj.d -o CMakeFiles\main.dir\src\algebra.obj -c E:\cpp\test1\src\algebra.cpp

CMakeFiles/main.dir/src/algebra.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/algebra.i"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\cpp\test1\src\algebra.cpp > CMakeFiles\main.dir\src\algebra.i

CMakeFiles/main.dir/src/algebra.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/algebra.s"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\cpp\test1\src\algebra.cpp -o CMakeFiles\main.dir\src\algebra.s

CMakeFiles/main.dir/src/main.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/main.obj: E:/cpp/test1/src/main.cpp
CMakeFiles/main.dir/src/main.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\cpp\test1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/main.obj"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/main.obj -MF CMakeFiles\main.dir\src\main.obj.d -o CMakeFiles\main.dir\src\main.obj -c E:\cpp\test1\src\main.cpp

CMakeFiles/main.dir/src/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.i"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\cpp\test1\src\main.cpp > CMakeFiles\main.dir\src\main.i

CMakeFiles/main.dir/src/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.s"
	D:\Dev-Cpp\MinGW32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\cpp\test1\src\main.cpp -o CMakeFiles\main.dir\src\main.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/algebra.obj" \
"CMakeFiles/main.dir/src/main.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/src/algebra.obj
E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/src/main.obj
E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/build.make
E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/linkLibs.rsp
E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/objects1.rsp
E:/cpp/test1/bin/main.exe: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\cpp\test1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable E:\cpp\test1\bin\main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: E:/cpp/test1/bin/main.exe
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main.dir\cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\cpp\test1 E:\cpp\test1 E:\cpp\test1\build E:\cpp\test1\build E:\cpp\test1\build\CMakeFiles\main.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main.dir/depend

