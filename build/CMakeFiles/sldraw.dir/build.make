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
include CMakeFiles/sldraw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sldraw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sldraw.dir/flags.make

CMakeFiles/sldraw.dir/tokenize.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/tokenize.cpp.o: ../tokenize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sldraw.dir/tokenize.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/tokenize.cpp.o -c /vagrant/tokenize.cpp

CMakeFiles/sldraw.dir/tokenize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/tokenize.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/tokenize.cpp > CMakeFiles/sldraw.dir/tokenize.cpp.i

CMakeFiles/sldraw.dir/tokenize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/tokenize.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/tokenize.cpp -o CMakeFiles/sldraw.dir/tokenize.cpp.s

CMakeFiles/sldraw.dir/tokenize.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/tokenize.cpp.o.requires

CMakeFiles/sldraw.dir/tokenize.cpp.o.provides: CMakeFiles/sldraw.dir/tokenize.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/tokenize.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/tokenize.cpp.o.provides

CMakeFiles/sldraw.dir/tokenize.cpp.o.provides.build: CMakeFiles/sldraw.dir/tokenize.cpp.o


CMakeFiles/sldraw.dir/expression.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/expression.cpp.o: ../expression.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sldraw.dir/expression.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/expression.cpp.o -c /vagrant/expression.cpp

CMakeFiles/sldraw.dir/expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/expression.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/expression.cpp > CMakeFiles/sldraw.dir/expression.cpp.i

CMakeFiles/sldraw.dir/expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/expression.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/expression.cpp -o CMakeFiles/sldraw.dir/expression.cpp.s

CMakeFiles/sldraw.dir/expression.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/expression.cpp.o.requires

CMakeFiles/sldraw.dir/expression.cpp.o.provides: CMakeFiles/sldraw.dir/expression.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/expression.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/expression.cpp.o.provides

CMakeFiles/sldraw.dir/expression.cpp.o.provides.build: CMakeFiles/sldraw.dir/expression.cpp.o


CMakeFiles/sldraw.dir/environment.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/environment.cpp.o: ../environment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sldraw.dir/environment.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/environment.cpp.o -c /vagrant/environment.cpp

CMakeFiles/sldraw.dir/environment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/environment.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/environment.cpp > CMakeFiles/sldraw.dir/environment.cpp.i

CMakeFiles/sldraw.dir/environment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/environment.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/environment.cpp -o CMakeFiles/sldraw.dir/environment.cpp.s

CMakeFiles/sldraw.dir/environment.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/environment.cpp.o.requires

CMakeFiles/sldraw.dir/environment.cpp.o.provides: CMakeFiles/sldraw.dir/environment.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/environment.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/environment.cpp.o.provides

CMakeFiles/sldraw.dir/environment.cpp.o.provides.build: CMakeFiles/sldraw.dir/environment.cpp.o


CMakeFiles/sldraw.dir/interpreter.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/interpreter.cpp.o: ../interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sldraw.dir/interpreter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/interpreter.cpp.o -c /vagrant/interpreter.cpp

CMakeFiles/sldraw.dir/interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/interpreter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/interpreter.cpp > CMakeFiles/sldraw.dir/interpreter.cpp.i

CMakeFiles/sldraw.dir/interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/interpreter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/interpreter.cpp -o CMakeFiles/sldraw.dir/interpreter.cpp.s

CMakeFiles/sldraw.dir/interpreter.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/interpreter.cpp.o.requires

CMakeFiles/sldraw.dir/interpreter.cpp.o.provides: CMakeFiles/sldraw.dir/interpreter.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/interpreter.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/interpreter.cpp.o.provides

CMakeFiles/sldraw.dir/interpreter.cpp.o.provides.build: CMakeFiles/sldraw.dir/interpreter.cpp.o


CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o: ../qgraphics_arc_item.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o -c /vagrant/qgraphics_arc_item.cpp

CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/qgraphics_arc_item.cpp > CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.i

CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/qgraphics_arc_item.cpp -o CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.s

CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.requires

CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.provides: CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.provides

CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.provides.build: CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o


CMakeFiles/sldraw.dir/message_widget.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/message_widget.cpp.o: ../message_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sldraw.dir/message_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/message_widget.cpp.o -c /vagrant/message_widget.cpp

CMakeFiles/sldraw.dir/message_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/message_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/message_widget.cpp > CMakeFiles/sldraw.dir/message_widget.cpp.i

CMakeFiles/sldraw.dir/message_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/message_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/message_widget.cpp -o CMakeFiles/sldraw.dir/message_widget.cpp.s

CMakeFiles/sldraw.dir/message_widget.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/message_widget.cpp.o.requires

CMakeFiles/sldraw.dir/message_widget.cpp.o.provides: CMakeFiles/sldraw.dir/message_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/message_widget.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/message_widget.cpp.o.provides

CMakeFiles/sldraw.dir/message_widget.cpp.o.provides.build: CMakeFiles/sldraw.dir/message_widget.cpp.o


CMakeFiles/sldraw.dir/canvas_widget.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/canvas_widget.cpp.o: ../canvas_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sldraw.dir/canvas_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/canvas_widget.cpp.o -c /vagrant/canvas_widget.cpp

CMakeFiles/sldraw.dir/canvas_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/canvas_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/canvas_widget.cpp > CMakeFiles/sldraw.dir/canvas_widget.cpp.i

CMakeFiles/sldraw.dir/canvas_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/canvas_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/canvas_widget.cpp -o CMakeFiles/sldraw.dir/canvas_widget.cpp.s

CMakeFiles/sldraw.dir/canvas_widget.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/canvas_widget.cpp.o.requires

CMakeFiles/sldraw.dir/canvas_widget.cpp.o.provides: CMakeFiles/sldraw.dir/canvas_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/canvas_widget.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/canvas_widget.cpp.o.provides

CMakeFiles/sldraw.dir/canvas_widget.cpp.o.provides.build: CMakeFiles/sldraw.dir/canvas_widget.cpp.o


CMakeFiles/sldraw.dir/repl_widget.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/repl_widget.cpp.o: ../repl_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sldraw.dir/repl_widget.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/repl_widget.cpp.o -c /vagrant/repl_widget.cpp

CMakeFiles/sldraw.dir/repl_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/repl_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/repl_widget.cpp > CMakeFiles/sldraw.dir/repl_widget.cpp.i

CMakeFiles/sldraw.dir/repl_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/repl_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/repl_widget.cpp -o CMakeFiles/sldraw.dir/repl_widget.cpp.s

CMakeFiles/sldraw.dir/repl_widget.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/repl_widget.cpp.o.requires

CMakeFiles/sldraw.dir/repl_widget.cpp.o.provides: CMakeFiles/sldraw.dir/repl_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/repl_widget.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/repl_widget.cpp.o.provides

CMakeFiles/sldraw.dir/repl_widget.cpp.o.provides.build: CMakeFiles/sldraw.dir/repl_widget.cpp.o


CMakeFiles/sldraw.dir/qt_interpreter.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/qt_interpreter.cpp.o: ../qt_interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/sldraw.dir/qt_interpreter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/qt_interpreter.cpp.o -c /vagrant/qt_interpreter.cpp

CMakeFiles/sldraw.dir/qt_interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/qt_interpreter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/qt_interpreter.cpp > CMakeFiles/sldraw.dir/qt_interpreter.cpp.i

CMakeFiles/sldraw.dir/qt_interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/qt_interpreter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/qt_interpreter.cpp -o CMakeFiles/sldraw.dir/qt_interpreter.cpp.s

CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.requires

CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.provides: CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.provides

CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.provides.build: CMakeFiles/sldraw.dir/qt_interpreter.cpp.o


CMakeFiles/sldraw.dir/main_window.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/main_window.cpp.o: ../main_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/sldraw.dir/main_window.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/main_window.cpp.o -c /vagrant/main_window.cpp

CMakeFiles/sldraw.dir/main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/main_window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/main_window.cpp > CMakeFiles/sldraw.dir/main_window.cpp.i

CMakeFiles/sldraw.dir/main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/main_window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/main_window.cpp -o CMakeFiles/sldraw.dir/main_window.cpp.s

CMakeFiles/sldraw.dir/main_window.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/main_window.cpp.o.requires

CMakeFiles/sldraw.dir/main_window.cpp.o.provides: CMakeFiles/sldraw.dir/main_window.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/main_window.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/main_window.cpp.o.provides

CMakeFiles/sldraw.dir/main_window.cpp.o.provides.build: CMakeFiles/sldraw.dir/main_window.cpp.o


CMakeFiles/sldraw.dir/sldraw.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/sldraw.cpp.o: ../sldraw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/sldraw.dir/sldraw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/sldraw.cpp.o -c /vagrant/sldraw.cpp

CMakeFiles/sldraw.dir/sldraw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/sldraw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/sldraw.cpp > CMakeFiles/sldraw.dir/sldraw.cpp.i

CMakeFiles/sldraw.dir/sldraw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/sldraw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/sldraw.cpp -o CMakeFiles/sldraw.dir/sldraw.cpp.s

CMakeFiles/sldraw.dir/sldraw.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/sldraw.cpp.o.requires

CMakeFiles/sldraw.dir/sldraw.cpp.o.provides: CMakeFiles/sldraw.dir/sldraw.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/sldraw.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/sldraw.cpp.o.provides

CMakeFiles/sldraw.dir/sldraw.cpp.o.provides.build: CMakeFiles/sldraw.dir/sldraw.cpp.o


CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o: CMakeFiles/sldraw.dir/flags.make
CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o: sldraw_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o -c /vagrant/build/sldraw_autogen/mocs_compilation.cpp

CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/build/sldraw_autogen/mocs_compilation.cpp > CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.i

CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/build/sldraw_autogen/mocs_compilation.cpp -o CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.s

CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/sldraw.dir/build.make CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o


# Object files for target sldraw
sldraw_OBJECTS = \
"CMakeFiles/sldraw.dir/tokenize.cpp.o" \
"CMakeFiles/sldraw.dir/expression.cpp.o" \
"CMakeFiles/sldraw.dir/environment.cpp.o" \
"CMakeFiles/sldraw.dir/interpreter.cpp.o" \
"CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o" \
"CMakeFiles/sldraw.dir/message_widget.cpp.o" \
"CMakeFiles/sldraw.dir/canvas_widget.cpp.o" \
"CMakeFiles/sldraw.dir/repl_widget.cpp.o" \
"CMakeFiles/sldraw.dir/qt_interpreter.cpp.o" \
"CMakeFiles/sldraw.dir/main_window.cpp.o" \
"CMakeFiles/sldraw.dir/sldraw.cpp.o" \
"CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o"

# External object files for target sldraw
sldraw_EXTERNAL_OBJECTS =

sldraw: CMakeFiles/sldraw.dir/tokenize.cpp.o
sldraw: CMakeFiles/sldraw.dir/expression.cpp.o
sldraw: CMakeFiles/sldraw.dir/environment.cpp.o
sldraw: CMakeFiles/sldraw.dir/interpreter.cpp.o
sldraw: CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o
sldraw: CMakeFiles/sldraw.dir/message_widget.cpp.o
sldraw: CMakeFiles/sldraw.dir/canvas_widget.cpp.o
sldraw: CMakeFiles/sldraw.dir/repl_widget.cpp.o
sldraw: CMakeFiles/sldraw.dir/qt_interpreter.cpp.o
sldraw: CMakeFiles/sldraw.dir/main_window.cpp.o
sldraw: CMakeFiles/sldraw.dir/sldraw.cpp.o
sldraw: CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o
sldraw: CMakeFiles/sldraw.dir/build.make
sldraw: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
sldraw: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
sldraw: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
sldraw: CMakeFiles/sldraw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/vagrant/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable sldraw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sldraw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sldraw.dir/build: sldraw

.PHONY : CMakeFiles/sldraw.dir/build

CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/tokenize.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/expression.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/environment.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/interpreter.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/qgraphics_arc_item.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/message_widget.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/canvas_widget.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/repl_widget.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/qt_interpreter.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/main_window.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/sldraw.cpp.o.requires
CMakeFiles/sldraw.dir/requires: CMakeFiles/sldraw.dir/sldraw_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/sldraw.dir/requires

CMakeFiles/sldraw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sldraw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sldraw.dir/clean

CMakeFiles/sldraw.dir/depend:
	cd /vagrant/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vagrant /vagrant /vagrant/build /vagrant/build /vagrant/build/CMakeFiles/sldraw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sldraw.dir/depend

