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
include tasks/tests_checking/CMakeFiles/test_tests_checking.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/tests_checking/CMakeFiles/test_tests_checking.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/tests_checking/CMakeFiles/test_tests_checking.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/tests_checking/CMakeFiles/test_tests_checking.dir/flags.make

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/flags.make
tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/tests_checking.cpp
tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o -MF CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o.d -o CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/tests_checking.cpp

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_tests_checking.dir/tests_checking.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/tests_checking.cpp > CMakeFiles/test_tests_checking.dir/tests_checking.cpp.i

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_tests_checking.dir/tests_checking.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/tests_checking.cpp -o CMakeFiles/test_tests_checking.dir/tests_checking.cpp.s

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/flags.make
tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/test.cpp
tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o -MF CMakeFiles/test_tests_checking.dir/test.cpp.o.d -o CMakeFiles/test_tests_checking.dir/test.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/test.cpp

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_tests_checking.dir/test.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/test.cpp > CMakeFiles/test_tests_checking.dir/test.cpp.i

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_tests_checking.dir/test.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking/test.cpp -o CMakeFiles/test_tests_checking.dir/test.cpp.s

# Object files for target test_tests_checking
test_tests_checking_OBJECTS = \
"CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o" \
"CMakeFiles/test_tests_checking.dir/test.cpp.o"

# External object files for target test_tests_checking
test_tests_checking_EXTERNAL_OBJECTS =

test_tests_checking: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/tests_checking.cpp.o
test_tests_checking: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/test.cpp.o
test_tests_checking: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/build.make
test_tests_checking: libcontrib_catch_main.a
test_tests_checking: tasks/tests_checking/CMakeFiles/test_tests_checking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_tests_checking"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_tests_checking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/tests_checking/CMakeFiles/test_tests_checking.dir/build: test_tests_checking
.PHONY : tasks/tests_checking/CMakeFiles/test_tests_checking.dir/build

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/clean:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking && $(CMAKE_COMMAND) -P CMakeFiles/test_tests_checking.dir/cmake_clean.cmake
.PHONY : tasks/tests_checking/CMakeFiles/test_tests_checking.dir/clean

tasks/tests_checking/CMakeFiles/test_tests_checking.dir/depend:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/tests_checking /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking/CMakeFiles/test_tests_checking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/tests_checking/CMakeFiles/test_tests_checking.dir/depend

