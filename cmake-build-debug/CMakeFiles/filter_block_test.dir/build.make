# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /snap/clion/61/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/61/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/CLionProjects/leveldb_ori

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/filter_block_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/filter_block_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/filter_block_test.dir/flags.make

CMakeFiles/filter_block_test.dir/util/testharness.cc.o: CMakeFiles/filter_block_test.dir/flags.make
CMakeFiles/filter_block_test.dir/util/testharness.cc.o: ../util/testharness.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/filter_block_test.dir/util/testharness.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/filter_block_test.dir/util/testharness.cc.o -c /home/ubuntu/CLionProjects/leveldb_ori/util/testharness.cc

CMakeFiles/filter_block_test.dir/util/testharness.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filter_block_test.dir/util/testharness.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/CLionProjects/leveldb_ori/util/testharness.cc > CMakeFiles/filter_block_test.dir/util/testharness.cc.i

CMakeFiles/filter_block_test.dir/util/testharness.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filter_block_test.dir/util/testharness.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/CLionProjects/leveldb_ori/util/testharness.cc -o CMakeFiles/filter_block_test.dir/util/testharness.cc.s

CMakeFiles/filter_block_test.dir/util/testutil.cc.o: CMakeFiles/filter_block_test.dir/flags.make
CMakeFiles/filter_block_test.dir/util/testutil.cc.o: ../util/testutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/filter_block_test.dir/util/testutil.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/filter_block_test.dir/util/testutil.cc.o -c /home/ubuntu/CLionProjects/leveldb_ori/util/testutil.cc

CMakeFiles/filter_block_test.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filter_block_test.dir/util/testutil.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/CLionProjects/leveldb_ori/util/testutil.cc > CMakeFiles/filter_block_test.dir/util/testutil.cc.i

CMakeFiles/filter_block_test.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filter_block_test.dir/util/testutil.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/CLionProjects/leveldb_ori/util/testutil.cc -o CMakeFiles/filter_block_test.dir/util/testutil.cc.s

CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o: CMakeFiles/filter_block_test.dir/flags.make
CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o: ../table/filter_block_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o -c /home/ubuntu/CLionProjects/leveldb_ori/table/filter_block_test.cc

CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/CLionProjects/leveldb_ori/table/filter_block_test.cc > CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.i

CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/CLionProjects/leveldb_ori/table/filter_block_test.cc -o CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.s

# Object files for target filter_block_test
filter_block_test_OBJECTS = \
"CMakeFiles/filter_block_test.dir/util/testharness.cc.o" \
"CMakeFiles/filter_block_test.dir/util/testutil.cc.o" \
"CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o"

# External object files for target filter_block_test
filter_block_test_EXTERNAL_OBJECTS =

filter_block_test: CMakeFiles/filter_block_test.dir/util/testharness.cc.o
filter_block_test: CMakeFiles/filter_block_test.dir/util/testutil.cc.o
filter_block_test: CMakeFiles/filter_block_test.dir/table/filter_block_test.cc.o
filter_block_test: CMakeFiles/filter_block_test.dir/build.make
filter_block_test: libleveldb.a
filter_block_test: CMakeFiles/filter_block_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable filter_block_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filter_block_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/filter_block_test.dir/build: filter_block_test

.PHONY : CMakeFiles/filter_block_test.dir/build

CMakeFiles/filter_block_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/filter_block_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/filter_block_test.dir/clean

CMakeFiles/filter_block_test.dir/depend:
	cd /home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/CLionProjects/leveldb_ori /home/ubuntu/CLionProjects/leveldb_ori /home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug /home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug /home/ubuntu/CLionProjects/leveldb_ori/cmake-build-debug/CMakeFiles/filter_block_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/filter_block_test.dir/depend

