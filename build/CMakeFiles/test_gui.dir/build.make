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
include CMakeFiles/test_gui.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_gui.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_gui.dir/flags.make

CMakeFiles/test_gui.dir/test_gui.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/test_gui.cpp.o: ../test_gui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_gui.dir/test_gui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/test_gui.cpp.o -c /vagrant/test_gui.cpp

CMakeFiles/test_gui.dir/test_gui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/test_gui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/test_gui.cpp > CMakeFiles/test_gui.dir/test_gui.cpp.i

CMakeFiles/test_gui.dir/test_gui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/test_gui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/test_gui.cpp -o CMakeFiles/test_gui.dir/test_gui.cpp.s

CMakeFiles/test_gui.dir/test_gui.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/test_gui.cpp.o.requires

CMakeFiles/test_gui.dir/test_gui.cpp.o.provides: CMakeFiles/test_gui.dir/test_gui.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/test_gui.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/test_gui.cpp.o.provides

CMakeFiles/test_gui.dir/test_gui.cpp.o.provides.build: CMakeFiles/test_gui.dir/test_gui.cpp.o


CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o: ../qgraphics_arc_item.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o -c /vagrant/qgraphics_arc_item.cpp

CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/qgraphics_arc_item.cpp > CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.i

CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/qgraphics_arc_item.cpp -o CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.s

CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.requires

CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.provides: CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.provides

CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.provides.build: CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o


CMakeFiles/test_gui.dir/message_widget.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/message_widget.cpp.o: ../message_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test_gui.dir/message_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/message_widget.cpp.o -c /vagrant/message_widget.cpp

CMakeFiles/test_gui.dir/message_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/message_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/message_widget.cpp > CMakeFiles/test_gui.dir/message_widget.cpp.i

CMakeFiles/test_gui.dir/message_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/message_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/message_widget.cpp -o CMakeFiles/test_gui.dir/message_widget.cpp.s

CMakeFiles/test_gui.dir/message_widget.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/message_widget.cpp.o.requires

CMakeFiles/test_gui.dir/message_widget.cpp.o.provides: CMakeFiles/test_gui.dir/message_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/message_widget.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/message_widget.cpp.o.provides

CMakeFiles/test_gui.dir/message_widget.cpp.o.provides.build: CMakeFiles/test_gui.dir/message_widget.cpp.o


CMakeFiles/test_gui.dir/canvas_widget.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/canvas_widget.cpp.o: ../canvas_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/test_gui.dir/canvas_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/canvas_widget.cpp.o -c /vagrant/canvas_widget.cpp

CMakeFiles/test_gui.dir/canvas_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/canvas_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/canvas_widget.cpp > CMakeFiles/test_gui.dir/canvas_widget.cpp.i

CMakeFiles/test_gui.dir/canvas_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/canvas_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/canvas_widget.cpp -o CMakeFiles/test_gui.dir/canvas_widget.cpp.s

CMakeFiles/test_gui.dir/canvas_widget.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/canvas_widget.cpp.o.requires

CMakeFiles/test_gui.dir/canvas_widget.cpp.o.provides: CMakeFiles/test_gui.dir/canvas_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/canvas_widget.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/canvas_widget.cpp.o.provides

CMakeFiles/test_gui.dir/canvas_widget.cpp.o.provides.build: CMakeFiles/test_gui.dir/canvas_widget.cpp.o


CMakeFiles/test_gui.dir/repl_widget.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/repl_widget.cpp.o: ../repl_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/test_gui.dir/repl_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/repl_widget.cpp.o -c /vagrant/repl_widget.cpp

CMakeFiles/test_gui.dir/repl_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/repl_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/repl_widget.cpp > CMakeFiles/test_gui.dir/repl_widget.cpp.i

CMakeFiles/test_gui.dir/repl_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/repl_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/repl_widget.cpp -o CMakeFiles/test_gui.dir/repl_widget.cpp.s

CMakeFiles/test_gui.dir/repl_widget.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/repl_widget.cpp.o.requires

CMakeFiles/test_gui.dir/repl_widget.cpp.o.provides: CMakeFiles/test_gui.dir/repl_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/repl_widget.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/repl_widget.cpp.o.provides

CMakeFiles/test_gui.dir/repl_widget.cpp.o.provides.build: CMakeFiles/test_gui.dir/repl_widget.cpp.o


CMakeFiles/test_gui.dir/qt_interpreter.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/qt_interpreter.cpp.o: ../qt_interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/test_gui.dir/qt_interpreter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/qt_interpreter.cpp.o -c /vagrant/qt_interpreter.cpp

CMakeFiles/test_gui.dir/qt_interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/qt_interpreter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/qt_interpreter.cpp > CMakeFiles/test_gui.dir/qt_interpreter.cpp.i

CMakeFiles/test_gui.dir/qt_interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/qt_interpreter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/qt_interpreter.cpp -o CMakeFiles/test_gui.dir/qt_interpreter.cpp.s

CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.requires

CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.provides: CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.provides

CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.provides.build: CMakeFiles/test_gui.dir/qt_interpreter.cpp.o


CMakeFiles/test_gui.dir/main_window.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/main_window.cpp.o: ../main_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/test_gui.dir/main_window.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/main_window.cpp.o -c /vagrant/main_window.cpp

CMakeFiles/test_gui.dir/main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/main_window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/main_window.cpp > CMakeFiles/test_gui.dir/main_window.cpp.i

CMakeFiles/test_gui.dir/main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/main_window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/main_window.cpp -o CMakeFiles/test_gui.dir/main_window.cpp.s

CMakeFiles/test_gui.dir/main_window.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/main_window.cpp.o.requires

CMakeFiles/test_gui.dir/main_window.cpp.o.provides: CMakeFiles/test_gui.dir/main_window.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/main_window.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/main_window.cpp.o.provides

CMakeFiles/test_gui.dir/main_window.cpp.o.provides.build: CMakeFiles/test_gui.dir/main_window.cpp.o


CMakeFiles/test_gui.dir/tokenize.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/tokenize.cpp.o: ../tokenize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/test_gui.dir/tokenize.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/tokenize.cpp.o -c /vagrant/tokenize.cpp

CMakeFiles/test_gui.dir/tokenize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/tokenize.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/tokenize.cpp > CMakeFiles/test_gui.dir/tokenize.cpp.i

CMakeFiles/test_gui.dir/tokenize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/tokenize.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/tokenize.cpp -o CMakeFiles/test_gui.dir/tokenize.cpp.s

CMakeFiles/test_gui.dir/tokenize.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/tokenize.cpp.o.requires

CMakeFiles/test_gui.dir/tokenize.cpp.o.provides: CMakeFiles/test_gui.dir/tokenize.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/tokenize.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/tokenize.cpp.o.provides

CMakeFiles/test_gui.dir/tokenize.cpp.o.provides.build: CMakeFiles/test_gui.dir/tokenize.cpp.o


CMakeFiles/test_gui.dir/expression.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/expression.cpp.o: ../expression.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/test_gui.dir/expression.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/expression.cpp.o -c /vagrant/expression.cpp

CMakeFiles/test_gui.dir/expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/expression.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/expression.cpp > CMakeFiles/test_gui.dir/expression.cpp.i

CMakeFiles/test_gui.dir/expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/expression.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/expression.cpp -o CMakeFiles/test_gui.dir/expression.cpp.s

CMakeFiles/test_gui.dir/expression.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/expression.cpp.o.requires

CMakeFiles/test_gui.dir/expression.cpp.o.provides: CMakeFiles/test_gui.dir/expression.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/expression.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/expression.cpp.o.provides

CMakeFiles/test_gui.dir/expression.cpp.o.provides.build: CMakeFiles/test_gui.dir/expression.cpp.o


CMakeFiles/test_gui.dir/environment.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/environment.cpp.o: ../environment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/test_gui.dir/environment.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/environment.cpp.o -c /vagrant/environment.cpp

CMakeFiles/test_gui.dir/environment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/environment.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/environment.cpp > CMakeFiles/test_gui.dir/environment.cpp.i

CMakeFiles/test_gui.dir/environment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/environment.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/environment.cpp -o CMakeFiles/test_gui.dir/environment.cpp.s

CMakeFiles/test_gui.dir/environment.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/environment.cpp.o.requires

CMakeFiles/test_gui.dir/environment.cpp.o.provides: CMakeFiles/test_gui.dir/environment.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/environment.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/environment.cpp.o.provides

CMakeFiles/test_gui.dir/environment.cpp.o.provides.build: CMakeFiles/test_gui.dir/environment.cpp.o


CMakeFiles/test_gui.dir/interpreter.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/interpreter.cpp.o: ../interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/test_gui.dir/interpreter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/interpreter.cpp.o -c /vagrant/interpreter.cpp

CMakeFiles/test_gui.dir/interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/interpreter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/interpreter.cpp > CMakeFiles/test_gui.dir/interpreter.cpp.i

CMakeFiles/test_gui.dir/interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/interpreter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/interpreter.cpp -o CMakeFiles/test_gui.dir/interpreter.cpp.s

CMakeFiles/test_gui.dir/interpreter.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/interpreter.cpp.o.requires

CMakeFiles/test_gui.dir/interpreter.cpp.o.provides: CMakeFiles/test_gui.dir/interpreter.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/interpreter.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/interpreter.cpp.o.provides

CMakeFiles/test_gui.dir/interpreter.cpp.o.provides.build: CMakeFiles/test_gui.dir/interpreter.cpp.o


CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o: CMakeFiles/test_gui.dir/flags.make
CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o: test_gui_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o -c /vagrant/build/test_gui_autogen/mocs_compilation.cpp

CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/build/test_gui_autogen/mocs_compilation.cpp > CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.i

CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/build/test_gui_autogen/mocs_compilation.cpp -o CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.s

CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_gui.dir/build.make CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o


# Object files for target test_gui
test_gui_OBJECTS = \
"CMakeFiles/test_gui.dir/test_gui.cpp.o" \
"CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o" \
"CMakeFiles/test_gui.dir/message_widget.cpp.o" \
"CMakeFiles/test_gui.dir/canvas_widget.cpp.o" \
"CMakeFiles/test_gui.dir/repl_widget.cpp.o" \
"CMakeFiles/test_gui.dir/qt_interpreter.cpp.o" \
"CMakeFiles/test_gui.dir/main_window.cpp.o" \
"CMakeFiles/test_gui.dir/tokenize.cpp.o" \
"CMakeFiles/test_gui.dir/expression.cpp.o" \
"CMakeFiles/test_gui.dir/environment.cpp.o" \
"CMakeFiles/test_gui.dir/interpreter.cpp.o" \
"CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o"

# External object files for target test_gui
test_gui_EXTERNAL_OBJECTS =

test_gui: CMakeFiles/test_gui.dir/test_gui.cpp.o
test_gui: CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o
test_gui: CMakeFiles/test_gui.dir/message_widget.cpp.o
test_gui: CMakeFiles/test_gui.dir/canvas_widget.cpp.o
test_gui: CMakeFiles/test_gui.dir/repl_widget.cpp.o
test_gui: CMakeFiles/test_gui.dir/qt_interpreter.cpp.o
test_gui: CMakeFiles/test_gui.dir/main_window.cpp.o
test_gui: CMakeFiles/test_gui.dir/tokenize.cpp.o
test_gui: CMakeFiles/test_gui.dir/expression.cpp.o
test_gui: CMakeFiles/test_gui.dir/environment.cpp.o
test_gui: CMakeFiles/test_gui.dir/interpreter.cpp.o
test_gui: CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o
test_gui: CMakeFiles/test_gui.dir/build.make
test_gui: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
test_gui: /usr/lib/x86_64-linux-gnu/libQt5Test.so.5.9.5
test_gui: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
test_gui: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
test_gui: CMakeFiles/test_gui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable test_gui"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_gui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_gui.dir/build: test_gui

.PHONY : CMakeFiles/test_gui.dir/build

CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/test_gui.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/qgraphics_arc_item.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/message_widget.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/canvas_widget.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/repl_widget.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/qt_interpreter.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/main_window.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/tokenize.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/expression.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/environment.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/interpreter.cpp.o.requires
CMakeFiles/test_gui.dir/requires: CMakeFiles/test_gui.dir/test_gui_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/test_gui.dir/requires

CMakeFiles/test_gui.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_gui.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_gui.dir/clean

CMakeFiles/test_gui.dir/depend:
	cd /vagrant/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vagrant /vagrant /vagrant/build /vagrant/build /vagrant/build/CMakeFiles/test_gui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_gui.dir/depend

