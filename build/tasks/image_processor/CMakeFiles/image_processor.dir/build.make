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
include tasks/image_processor/CMakeFiles/image_processor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/image_processor/CMakeFiles/image_processor.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/image_processor/CMakeFiles/image_processor.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/image_processor/CMakeFiles/image_processor.dir/flags.make

tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o: tasks/image_processor/CMakeFiles/image_processor.dir/flags.make
tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/image_processor/image_processor.cpp
tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o: tasks/image_processor/CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o -MF CMakeFiles/image_processor.dir/image_processor.cpp.o.d -o CMakeFiles/image_processor.dir/image_processor.cpp.o -c /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/image_processor/image_processor.cpp

tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/image_processor.cpp.i"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/image_processor/image_processor.cpp > CMakeFiles/image_processor.dir/image_processor.cpp.i

tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/image_processor.cpp.s"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/image_processor/image_processor.cpp -o CMakeFiles/image_processor.dir/image_processor.cpp.s

# Object files for target image_processor
image_processor_OBJECTS = \
"CMakeFiles/image_processor.dir/image_processor.cpp.o"

# External object files for target image_processor
image_processor_EXTERNAL_OBJECTS =

image_processor: tasks/image_processor/CMakeFiles/image_processor.dir/image_processor.cpp.o
image_processor: tasks/image_processor/CMakeFiles/image_processor.dir/build.make
image_processor: tasks/image_processor/CMakeFiles/image_processor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../image_processor"
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_processor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/image_processor/CMakeFiles/image_processor.dir/build: image_processor
.PHONY : tasks/image_processor/CMakeFiles/image_processor.dir/build

tasks/image_processor/CMakeFiles/image_processor.dir/clean:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor && $(CMAKE_COMMAND) -P CMakeFiles/image_processor.dir/cmake_clean.cmake
.PHONY : tasks/image_processor/CMakeFiles/image_processor.dir/clean

tasks/image_processor/CMakeFiles/image_processor.dir/depend:
	cd /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/tasks/image_processor /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/image_processor/CMakeFiles/image_processor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/image_processor/CMakeFiles/image_processor.dir/depend
