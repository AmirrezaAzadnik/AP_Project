# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/src/app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/src/app/builds

# Include any dependencies generated for this target.
include tests/libtest/CMakeFiles/lib570.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib570.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib570.dir/flags.make

tests/libtest/CMakeFiles/lib570.dir/lib570.c.o: tests/libtest/CMakeFiles/lib570.dir/flags.make
tests/libtest/CMakeFiles/lib570.dir/lib570.c.o: ../tests/libtest/lib570.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib570.dir/lib570.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib570.dir/lib570.c.o -c /usr/src/app/tests/libtest/lib570.c

tests/libtest/CMakeFiles/lib570.dir/lib570.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib570.dir/lib570.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/libtest/lib570.c > CMakeFiles/lib570.dir/lib570.c.i

tests/libtest/CMakeFiles/lib570.dir/lib570.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib570.dir/lib570.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/libtest/lib570.c -o CMakeFiles/lib570.dir/lib570.c.s

tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib570.dir/flags.make
tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.o: ../lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib570.dir/__/__/lib/timediff.c.o -c /usr/src/app/lib/timediff.c

tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib570.dir/__/__/lib/timediff.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/timediff.c > CMakeFiles/lib570.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib570.dir/__/__/lib/timediff.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/timediff.c -o CMakeFiles/lib570.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib570.dir/first.c.o: tests/libtest/CMakeFiles/lib570.dir/flags.make
tests/libtest/CMakeFiles/lib570.dir/first.c.o: ../tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib570.dir/first.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib570.dir/first.c.o -c /usr/src/app/tests/libtest/first.c

tests/libtest/CMakeFiles/lib570.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib570.dir/first.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/libtest/first.c > CMakeFiles/lib570.dir/first.c.i

tests/libtest/CMakeFiles/lib570.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib570.dir/first.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/libtest/first.c -o CMakeFiles/lib570.dir/first.c.s

# Object files for target lib570
lib570_OBJECTS = \
"CMakeFiles/lib570.dir/lib570.c.o" \
"CMakeFiles/lib570.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib570.dir/first.c.o"

# External object files for target lib570
lib570_EXTERNAL_OBJECTS =

tests/libtest/lib570: tests/libtest/CMakeFiles/lib570.dir/lib570.c.o
tests/libtest/lib570: tests/libtest/CMakeFiles/lib570.dir/__/__/lib/timediff.c.o
tests/libtest/lib570: tests/libtest/CMakeFiles/lib570.dir/first.c.o
tests/libtest/lib570: tests/libtest/CMakeFiles/lib570.dir/build.make
tests/libtest/lib570: lib/libcurl.so.4.8.0
tests/libtest/lib570: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib570: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib570: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib570: tests/libtest/CMakeFiles/lib570.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lib570"
	cd /usr/src/app/builds/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib570.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib570.dir/build: tests/libtest/lib570

.PHONY : tests/libtest/CMakeFiles/lib570.dir/build

tests/libtest/CMakeFiles/lib570.dir/clean:
	cd /usr/src/app/builds/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib570.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib570.dir/clean

tests/libtest/CMakeFiles/lib570.dir/depend:
	cd /usr/src/app/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/app /usr/src/app/tests/libtest /usr/src/app/builds /usr/src/app/builds/tests/libtest /usr/src/app/builds/tests/libtest/CMakeFiles/lib570.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib570.dir/depend

