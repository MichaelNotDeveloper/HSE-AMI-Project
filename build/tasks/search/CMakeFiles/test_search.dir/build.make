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
include tasks/search/CMakeFiles/test_search.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/search/CMakeFiles/test_search.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/search/CMakeFiles/test_search.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/search/CMakeFiles/test_search.dir/flags.make

tasks/search/CMakeFiles/test_search.dir/test.cpp.o: tasks/search/CMakeFiles/test_search.dir/flags.make
tasks/search/CMakeFiles/test_search.dir/test.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/test.cpp
tasks/search/CMakeFiles/test_search.dir/test.cpp.o: tasks/search/CMakeFiles/test_search.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/search/CMakeFiles/test_search.dir/test.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/search/CMakeFiles/test_search.dir/test.cpp.o -MF CMakeFiles/test_search.dir/test.cpp.o.d -o CMakeFiles/test_search.dir/test.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/test.cpp

tasks/search/CMakeFiles/test_search.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_search.dir/test.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/test.cpp > CMakeFiles/test_search.dir/test.cpp.i

tasks/search/CMakeFiles/test_search.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_search.dir/test.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/test.cpp -o CMakeFiles/test_search.dir/test.cpp.s

tasks/search/CMakeFiles/test_search.dir/search.cpp.o: tasks/search/CMakeFiles/test_search.dir/flags.make
tasks/search/CMakeFiles/test_search.dir/search.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/search.cpp
tasks/search/CMakeFiles/test_search.dir/search.cpp.o: tasks/search/CMakeFiles/test_search.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/search/CMakeFiles/test_search.dir/search.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/search/CMakeFiles/test_search.dir/search.cpp.o -MF CMakeFiles/test_search.dir/search.cpp.o.d -o CMakeFiles/test_search.dir/search.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/search.cpp

tasks/search/CMakeFiles/test_search.dir/search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_search.dir/search.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/search.cpp > CMakeFiles/test_search.dir/search.cpp.i

tasks/search/CMakeFiles/test_search.dir/search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_search.dir/search.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search/search.cpp -o CMakeFiles/test_search.dir/search.cpp.s

# Object files for target test_search
test_search_OBJECTS = \
"CMakeFiles/test_search.dir/test.cpp.o" \
"CMakeFiles/test_search.dir/search.cpp.o"

# External object files for target test_search
test_search_EXTERNAL_OBJECTS =

test_search: tasks/search/CMakeFiles/test_search.dir/test.cpp.o
test_search: tasks/search/CMakeFiles/test_search.dir/search.cpp.o
test_search: tasks/search/CMakeFiles/test_search.dir/build.make
test_search: libcontrib_catch_main.a
test_search: tasks/search/CMakeFiles/test_search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_search"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_search.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/search/CMakeFiles/test_search.dir/build: test_search
.PHONY : tasks/search/CMakeFiles/test_search.dir/build

tasks/search/CMakeFiles/test_search.dir/clean:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search && $(CMAKE_COMMAND) -P CMakeFiles/test_search.dir/cmake_clean.cmake
.PHONY : tasks/search/CMakeFiles/test_search.dir/clean

tasks/search/CMakeFiles/test_search.dir/depend:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/search /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search/CMakeFiles/test_search.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/search/CMakeFiles/test_search.dir/depend
