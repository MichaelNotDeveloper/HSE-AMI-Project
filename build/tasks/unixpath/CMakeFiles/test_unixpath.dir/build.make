# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build

# Include any dependencies generated for this target.
include tasks/unixpath/CMakeFiles/test_unixpath.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/unixpath/CMakeFiles/test_unixpath.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/unixpath/CMakeFiles/test_unixpath.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/unixpath/CMakeFiles/test_unixpath.dir/flags.make

tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o: tasks/unixpath/CMakeFiles/test_unixpath.dir/flags.make
tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/test.cpp
tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o: tasks/unixpath/CMakeFiles/test_unixpath.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o -MF CMakeFiles/test_unixpath.dir/test.cpp.o.d -o CMakeFiles/test_unixpath.dir/test.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/test.cpp

tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_unixpath.dir/test.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/test.cpp > CMakeFiles/test_unixpath.dir/test.cpp.i

tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_unixpath.dir/test.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/test.cpp -o CMakeFiles/test_unixpath.dir/test.cpp.s

tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o: tasks/unixpath/CMakeFiles/test_unixpath.dir/flags.make
tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/unixpath.cpp
tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o: tasks/unixpath/CMakeFiles/test_unixpath.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o -MF CMakeFiles/test_unixpath.dir/unixpath.cpp.o.d -o CMakeFiles/test_unixpath.dir/unixpath.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/unixpath.cpp

tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_unixpath.dir/unixpath.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/unixpath.cpp > CMakeFiles/test_unixpath.dir/unixpath.cpp.i

tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_unixpath.dir/unixpath.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath/unixpath.cpp -o CMakeFiles/test_unixpath.dir/unixpath.cpp.s

# Object files for target test_unixpath
test_unixpath_OBJECTS = \
"CMakeFiles/test_unixpath.dir/test.cpp.o" \
"CMakeFiles/test_unixpath.dir/unixpath.cpp.o"

# External object files for target test_unixpath
test_unixpath_EXTERNAL_OBJECTS =

test_unixpath: tasks/unixpath/CMakeFiles/test_unixpath.dir/test.cpp.o
test_unixpath: tasks/unixpath/CMakeFiles/test_unixpath.dir/unixpath.cpp.o
test_unixpath: tasks/unixpath/CMakeFiles/test_unixpath.dir/build.make
test_unixpath: libcontrib_catch_main.a
test_unixpath: tasks/unixpath/CMakeFiles/test_unixpath.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_unixpath"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_unixpath.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/unixpath/CMakeFiles/test_unixpath.dir/build: test_unixpath
.PHONY : tasks/unixpath/CMakeFiles/test_unixpath.dir/build

tasks/unixpath/CMakeFiles/test_unixpath.dir/clean:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath && $(CMAKE_COMMAND) -P CMakeFiles/test_unixpath.dir/cmake_clean.cmake
.PHONY : tasks/unixpath/CMakeFiles/test_unixpath.dir/clean

tasks/unixpath/CMakeFiles/test_unixpath.dir/depend:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/unixpath /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath/CMakeFiles/test_unixpath.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/unixpath/CMakeFiles/test_unixpath.dir/depend
