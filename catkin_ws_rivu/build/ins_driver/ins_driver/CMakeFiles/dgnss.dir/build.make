# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gnss/dev/module_test/catkin_ws_rivu/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gnss/dev/module_test/catkin_ws_rivu/build

# Include any dependencies generated for this target.
include ins_driver/ins_driver/CMakeFiles/dgnss.dir/depend.make

# Include the progress variables for this target.
include ins_driver/ins_driver/CMakeFiles/dgnss.dir/progress.make

# Include the compile flags for this target's objects.
include ins_driver/ins_driver/CMakeFiles/dgnss.dir/flags.make

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o: ins_driver/ins_driver/CMakeFiles/dgnss.dir/flags.make
ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o: /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/dgnss.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gnss/dev/module_test/catkin_ws_rivu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o -c /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/dgnss.cpp

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.i"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/dgnss.cpp > CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.i

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.s"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/dgnss.cpp -o CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.s

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o: ins_driver/ins_driver/CMakeFiles/dgnss.dir/flags.make
ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o: /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/ring_buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gnss/dev/module_test/catkin_ws_rivu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o   -c /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/ring_buffer.c

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.i"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/ring_buffer.c > CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.i

ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.s"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver/src/dgnss/ring_buffer.c -o CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.s

# Object files for target dgnss
dgnss_OBJECTS = \
"CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o" \
"CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o"

# External object files for target dgnss
dgnss_EXTERNAL_OBJECTS =

/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so: ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/dgnss.cpp.o
/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so: ins_driver/ins_driver/CMakeFiles/dgnss.dir/src/dgnss/ring_buffer.c.o
/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so: ins_driver/ins_driver/CMakeFiles/dgnss.dir/build.make
/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so: /home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libserial_driver_libs.so
/home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so: ins_driver/ins_driver/CMakeFiles/dgnss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gnss/dev/module_test/catkin_ws_rivu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so"
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dgnss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ins_driver/ins_driver/CMakeFiles/dgnss.dir/build: /home/gnss/dev/module_test/catkin_ws_rivu/devel/lib/libdgnss.so

.PHONY : ins_driver/ins_driver/CMakeFiles/dgnss.dir/build

ins_driver/ins_driver/CMakeFiles/dgnss.dir/clean:
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver && $(CMAKE_COMMAND) -P CMakeFiles/dgnss.dir/cmake_clean.cmake
.PHONY : ins_driver/ins_driver/CMakeFiles/dgnss.dir/clean

ins_driver/ins_driver/CMakeFiles/dgnss.dir/depend:
	cd /home/gnss/dev/module_test/catkin_ws_rivu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gnss/dev/module_test/catkin_ws_rivu/src /home/gnss/dev/module_test/catkin_ws_rivu/src/ins_driver/ins_driver /home/gnss/dev/module_test/catkin_ws_rivu/build /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver /home/gnss/dev/module_test/catkin_ws_rivu/build/ins_driver/ins_driver/CMakeFiles/dgnss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ins_driver/ins_driver/CMakeFiles/dgnss.dir/depend

