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
include tests/libtest/CMakeFiles/lib666.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib666.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib666.dir/flags.make

tests/libtest/CMakeFiles/lib666.dir/lib666.c.o: tests/libtest/CMakeFiles/lib666.dir/flags.make
tests/libtest/CMakeFiles/lib666.dir/lib666.c.o: ../tests/libtest/lib666.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib666.dir/lib666.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib666.dir/lib666.c.o -c /usr/src/app/tests/libtest/lib666.c

tests/libtest/CMakeFiles/lib666.dir/lib666.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib666.dir/lib666.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/libtest/lib666.c > CMakeFiles/lib666.dir/lib666.c.i

tests/libtest/CMakeFiles/lib666.dir/lib666.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib666.dir/lib666.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/libtest/lib666.c -o CMakeFiles/lib666.dir/lib666.c.s

tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib666.dir/flags.make
tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.o: ../lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib666.dir/__/__/lib/timediff.c.o -c /usr/src/app/lib/timediff.c

tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib666.dir/__/__/lib/timediff.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/timediff.c > CMakeFiles/lib666.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib666.dir/__/__/lib/timediff.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/timediff.c -o CMakeFiles/lib666.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib666.dir/first.c.o: tests/libtest/CMakeFiles/lib666.dir/flags.make
tests/libtest/CMakeFiles/lib666.dir/first.c.o: ../tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib666.dir/first.c.o"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib666.dir/first.c.o -c /usr/src/app/tests/libtest/first.c

tests/libtest/CMakeFiles/lib666.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib666.dir/first.c.i"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/libtest/first.c > CMakeFiles/lib666.dir/first.c.i

tests/libtest/CMakeFiles/lib666.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib666.dir/first.c.s"
	cd /usr/src/app/builds/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/libtest/first.c -o CMakeFiles/lib666.dir/first.c.s

# Object files for target lib666
lib666_OBJECTS = \
"CMakeFiles/lib666.dir/lib666.c.o" \
"CMakeFiles/lib666.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib666.dir/first.c.o"

# External object files for target lib666
lib666_EXTERNAL_OBJECTS =

tests/libtest/lib666: tests/libtest/CMakeFiles/lib666.dir/lib666.c.o
tests/libtest/lib666: tests/libtest/CMakeFiles/lib666.dir/__/__/lib/timediff.c.o
tests/libtest/lib666: tests/libtest/CMakeFiles/lib666.dir/first.c.o
tests/libtest/lib666: tests/libtest/CMakeFiles/lib666.dir/build.make
tests/libtest/lib666: lib/libcurl.so.4.8.0
tests/libtest/lib666: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib666: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib666: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib666: tests/libtest/CMakeFiles/lib666.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lib666"
	cd /usr/src/app/builds/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib666.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib666.dir/build: tests/libtest/lib666

.PHONY : tests/libtest/CMakeFiles/lib666.dir/build

tests/libtest/CMakeFiles/lib666.dir/clean:
	cd /usr/src/app/builds/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib666.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib666.dir/clean

tests/libtest/CMakeFiles/lib666.dir/depend:
	cd /usr/src/app/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/app /usr/src/app/tests/libtest /usr/src/app/builds /usr/src/app/builds/tests/libtest /usr/src/app/builds/tests/libtest/CMakeFiles/lib666.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib666.dir/depend

