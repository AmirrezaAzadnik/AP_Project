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
include tests/server/CMakeFiles/sockfilt.dir/depend.make

# Include the progress variables for this target.
include tests/server/CMakeFiles/sockfilt.dir/progress.make

# Include the compile flags for this target's objects.
include tests/server/CMakeFiles/sockfilt.dir/flags.make

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o: ../lib/mprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o -c /usr/src/app/lib/mprintf.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/mprintf.c > CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/mprintf.c -o CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o: ../lib/nonblock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o -c /usr/src/app/lib/nonblock.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/nonblock.c > CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/nonblock.c -o CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o: ../lib/strtoofft.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o -c /usr/src/app/lib/strtoofft.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/strtoofft.c > CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/strtoofft.c -o CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o: ../lib/warnless.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o -c /usr/src/app/lib/warnless.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/warnless.c > CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/warnless.c -o CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o: ../lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o -c /usr/src/app/lib/timediff.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/timediff.c > CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/timediff.c -o CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o: ../lib/dynbuf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o -c /usr/src/app/lib/dynbuf.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/dynbuf.c > CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/dynbuf.c -o CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o: ../lib/strdup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o -c /usr/src/app/lib/strdup.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/strdup.c > CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/strdup.c -o CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o: ../lib/strcase.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o -c /usr/src/app/lib/strcase.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/strcase.c > CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/strcase.c -o CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o: ../lib/curl_multibyte.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o -c /usr/src/app/lib/curl_multibyte.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/curl_multibyte.c > CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/curl_multibyte.c -o CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.s

tests/server/CMakeFiles/sockfilt.dir/getpart.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/getpart.c.o: ../tests/server/getpart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object tests/server/CMakeFiles/sockfilt.dir/getpart.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/getpart.c.o -c /usr/src/app/tests/server/getpart.c

tests/server/CMakeFiles/sockfilt.dir/getpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/getpart.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/server/getpart.c > CMakeFiles/sockfilt.dir/getpart.c.i

tests/server/CMakeFiles/sockfilt.dir/getpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/getpart.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/server/getpart.c -o CMakeFiles/sockfilt.dir/getpart.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o: ../lib/base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o -c /usr/src/app/lib/base64.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/base64.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/base64.c > CMakeFiles/sockfilt.dir/__/__/lib/base64.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/base64.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/base64.c -o CMakeFiles/sockfilt.dir/__/__/lib/base64.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o: ../lib/memdebug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o -c /usr/src/app/lib/memdebug.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/memdebug.c > CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/memdebug.c -o CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.s

tests/server/CMakeFiles/sockfilt.dir/util.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/util.c.o: ../tests/server/util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object tests/server/CMakeFiles/sockfilt.dir/util.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/util.c.o -c /usr/src/app/tests/server/util.c

tests/server/CMakeFiles/sockfilt.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/util.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/server/util.c > CMakeFiles/sockfilt.dir/util.c.i

tests/server/CMakeFiles/sockfilt.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/util.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/server/util.c -o CMakeFiles/sockfilt.dir/util.c.s

tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.o: ../tests/server/sockfilt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/sockfilt.c.o -c /usr/src/app/tests/server/sockfilt.c

tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/sockfilt.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/tests/server/sockfilt.c > CMakeFiles/sockfilt.dir/sockfilt.c.i

tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/sockfilt.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/tests/server/sockfilt.c -o CMakeFiles/sockfilt.dir/sockfilt.c.s

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o: tests/server/CMakeFiles/sockfilt.dir/flags.make
tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o: ../lib/inet_pton.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o -c /usr/src/app/lib/inet_pton.c

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.i"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/src/app/lib/inet_pton.c > CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.i

tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.s"
	cd /usr/src/app/builds/tests/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/src/app/lib/inet_pton.c -o CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.s

# Object files for target sockfilt
sockfilt_OBJECTS = \
"CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o" \
"CMakeFiles/sockfilt.dir/getpart.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o" \
"CMakeFiles/sockfilt.dir/util.c.o" \
"CMakeFiles/sockfilt.dir/sockfilt.c.o" \
"CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o"

# External object files for target sockfilt
sockfilt_EXTERNAL_OBJECTS =

tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/mprintf.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/nonblock.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strtoofft.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/warnless.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/timediff.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/dynbuf.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strdup.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/strcase.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/curl_multibyte.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/getpart.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/base64.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/memdebug.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/util.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/sockfilt.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/__/__/lib/inet_pton.c.o
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/build.make
tests/server/sockfilt: /usr/lib/x86_64-linux-gnu/libssl.so
tests/server/sockfilt: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/server/sockfilt: /usr/lib/x86_64-linux-gnu/libz.so
tests/server/sockfilt: tests/server/CMakeFiles/sockfilt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/app/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C executable sockfilt"
	cd /usr/src/app/builds/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sockfilt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/server/CMakeFiles/sockfilt.dir/build: tests/server/sockfilt

.PHONY : tests/server/CMakeFiles/sockfilt.dir/build

tests/server/CMakeFiles/sockfilt.dir/clean:
	cd /usr/src/app/builds/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/sockfilt.dir/cmake_clean.cmake
.PHONY : tests/server/CMakeFiles/sockfilt.dir/clean

tests/server/CMakeFiles/sockfilt.dir/depend:
	cd /usr/src/app/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/app /usr/src/app/tests/server /usr/src/app/builds /usr/src/app/builds/tests/server /usr/src/app/builds/tests/server/CMakeFiles/sockfilt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/server/CMakeFiles/sockfilt.dir/depend

