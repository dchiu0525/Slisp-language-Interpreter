# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /vagrant

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /vagrant/build

# Utility rule file for tidy.

# Include the progress variables for this target.
include CMakeFiles/tidy.dir/progress.make

CMakeFiles/tidy:
	/usr/bin/cmake -E env source=/vagrant env build=/vagrant/build /vagrant/scripts/tidy.sh

tidy: CMakeFiles/tidy
tidy: CMakeFiles/tidy.dir/build.make

.PHONY : tidy

# Rule to build all files generated by this target.
CMakeFiles/tidy.dir/build: tidy

.PHONY : CMakeFiles/tidy.dir/build

CMakeFiles/tidy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tidy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tidy.dir/clean

CMakeFiles/tidy.dir/depend:
	cd /vagrant/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vagrant /vagrant /vagrant/build /vagrant/build /vagrant/build/CMakeFiles/tidy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tidy.dir/depend

