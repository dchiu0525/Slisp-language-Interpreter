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

# Include any dependencies generated for this target.
include CMakeFiles/test_message.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_message.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_message.dir/flags.make

CMakeFiles/test_message.dir/test_message.cpp.o: CMakeFiles/test_message.dir/flags.make
CMakeFiles/test_message.dir/test_message.cpp.o: ../test_message.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_message.dir/test_message.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_message.dir/test_message.cpp.o -c /vagrant/test_message.cpp

CMakeFiles/test_message.dir/test_message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_message.dir/test_message.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/test_message.cpp > CMakeFiles/test_message.dir/test_message.cpp.i

CMakeFiles/test_message.dir/test_message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_message.dir/test_message.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/test_message.cpp -o CMakeFiles/test_message.dir/test_message.cpp.s

CMakeFiles/test_message.dir/test_message.cpp.o.requires:

.PHONY : CMakeFiles/test_message.dir/test_message.cpp.o.requires

CMakeFiles/test_message.dir/test_message.cpp.o.provides: CMakeFiles/test_message.dir/test_message.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_message.dir/build.make CMakeFiles/test_message.dir/test_message.cpp.o.provides.build
.PHONY : CMakeFiles/test_message.dir/test_message.cpp.o.provides

CMakeFiles/test_message.dir/test_message.cpp.o.provides.build: CMakeFiles/test_message.dir/test_message.cpp.o


CMakeFiles/test_message.dir/message_widget.cpp.o: CMakeFiles/test_message.dir/flags.make
CMakeFiles/test_message.dir/message_widget.cpp.o: ../message_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_message.dir/message_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_message.dir/message_widget.cpp.o -c /vagrant/message_widget.cpp

CMakeFiles/test_message.dir/message_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_message.dir/message_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/message_widget.cpp > CMakeFiles/test_message.dir/message_widget.cpp.i

CMakeFiles/test_message.dir/message_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_message.dir/message_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/message_widget.cpp -o CMakeFiles/test_message.dir/message_widget.cpp.s

CMakeFiles/test_message.dir/message_widget.cpp.o.requires:

.PHONY : CMakeFiles/test_message.dir/message_widget.cpp.o.requires

CMakeFiles/test_message.dir/message_widget.cpp.o.provides: CMakeFiles/test_message.dir/message_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_message.dir/build.make CMakeFiles/test_message.dir/message_widget.cpp.o.provides.build
.PHONY : CMakeFiles/test_message.dir/message_widget.cpp.o.provides

CMakeFiles/test_message.dir/message_widget.cpp.o.provides.build: CMakeFiles/test_message.dir/message_widget.cpp.o


CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o: CMakeFiles/test_message.dir/flags.make
CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o: test_message_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o -c /vagrant/build/test_message_autogen/mocs_compilation.cpp

CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/build/test_message_autogen/mocs_compilation.cpp > CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.i

CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/build/test_message_autogen/mocs_compilation.cpp -o CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.s

CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_message.dir/build.make CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o


# Object files for target test_message
test_message_OBJECTS = \
"CMakeFiles/test_message.dir/test_message.cpp.o" \
"CMakeFiles/test_message.dir/message_widget.cpp.o" \
"CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o"

# External object files for target test_message
test_message_EXTERNAL_OBJECTS =

test_message: CMakeFiles/test_message.dir/test_message.cpp.o
test_message: CMakeFiles/test_message.dir/message_widget.cpp.o
test_message: CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o
test_message: CMakeFiles/test_message.dir/build.make
test_message: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
test_message: /usr/lib/x86_64-linux-gnu/libQt5Test.so.5.9.5
test_message: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
test_message: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
test_message: CMakeFiles/test_message.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test_message"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_message.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_message.dir/build: test_message

.PHONY : CMakeFiles/test_message.dir/build

CMakeFiles/test_message.dir/requires: CMakeFiles/test_message.dir/test_message.cpp.o.requires
CMakeFiles/test_message.dir/requires: CMakeFiles/test_message.dir/message_widget.cpp.o.requires
CMakeFiles/test_message.dir/requires: CMakeFiles/test_message.dir/test_message_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/test_message.dir/requires

CMakeFiles/test_message.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_message.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_message.dir/clean

CMakeFiles/test_message.dir/depend:
	cd /vagrant/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vagrant /vagrant /vagrant/build /vagrant/build /vagrant/build/CMakeFiles/test_message.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_message.dir/depend

