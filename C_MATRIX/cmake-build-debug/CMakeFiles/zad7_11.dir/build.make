# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\lukasz\Desktop\D2\7\zad7_11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/zad7_11.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/zad7_11.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zad7_11.dir/flags.make

CMakeFiles/zad7_11.dir/main.c.obj: CMakeFiles/zad7_11.dir/flags.make
CMakeFiles/zad7_11.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/zad7_11.dir/main.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\zad7_11.dir\main.c.obj -c C:\Users\lukasz\Desktop\D2\7\zad7_11\main.c

CMakeFiles/zad7_11.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zad7_11.dir/main.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\lukasz\Desktop\D2\7\zad7_11\main.c > CMakeFiles\zad7_11.dir\main.c.i

CMakeFiles/zad7_11.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zad7_11.dir/main.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\lukasz\Desktop\D2\7\zad7_11\main.c -o CMakeFiles\zad7_11.dir\main.c.s

CMakeFiles/zad7_11.dir/matrix.c.obj: CMakeFiles/zad7_11.dir/flags.make
CMakeFiles/zad7_11.dir/matrix.c.obj: ../matrix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/zad7_11.dir/matrix.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\zad7_11.dir\matrix.c.obj -c C:\Users\lukasz\Desktop\D2\7\zad7_11\matrix.c

CMakeFiles/zad7_11.dir/matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zad7_11.dir/matrix.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\lukasz\Desktop\D2\7\zad7_11\matrix.c > CMakeFiles\zad7_11.dir\matrix.c.i

CMakeFiles/zad7_11.dir/matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zad7_11.dir/matrix.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\lukasz\Desktop\D2\7\zad7_11\matrix.c -o CMakeFiles\zad7_11.dir\matrix.c.s

# Object files for target zad7_11
zad7_11_OBJECTS = \
"CMakeFiles/zad7_11.dir/main.c.obj" \
"CMakeFiles/zad7_11.dir/matrix.c.obj"

# External object files for target zad7_11
zad7_11_EXTERNAL_OBJECTS =

zad7_11.exe: CMakeFiles/zad7_11.dir/main.c.obj
zad7_11.exe: CMakeFiles/zad7_11.dir/matrix.c.obj
zad7_11.exe: CMakeFiles/zad7_11.dir/build.make
zad7_11.exe: CMakeFiles/zad7_11.dir/linklibs.rsp
zad7_11.exe: CMakeFiles/zad7_11.dir/objects1.rsp
zad7_11.exe: CMakeFiles/zad7_11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable zad7_11.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\zad7_11.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zad7_11.dir/build: zad7_11.exe
.PHONY : CMakeFiles/zad7_11.dir/build

CMakeFiles/zad7_11.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\zad7_11.dir\cmake_clean.cmake
.PHONY : CMakeFiles/zad7_11.dir/clean

CMakeFiles/zad7_11.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\lukasz\Desktop\D2\7\zad7_11 C:\Users\lukasz\Desktop\D2\7\zad7_11 C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug C:\Users\lukasz\Desktop\D2\7\zad7_11\cmake-build-debug\CMakeFiles\zad7_11.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zad7_11.dir/depend
