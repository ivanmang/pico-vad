# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build

# Utility rule file for pico_scanvideo_scanvideo_pio_h.

# Include the progress variables for this target.
include pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/progress.make

pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h: pico_extras/src/common/pico_scanvideo/scanvideo.pio.h


pico_extras/src/common/pico_scanvideo/scanvideo.pio.h: /home/ivan/raspberry-pi-pico/pico/pico-extras/src/common/pico_scanvideo/scanvideo.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating scanvideo.pio.h"
	cd /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/pico_extras/src/common/pico_scanvideo && ../../../../pioasm/pioasm -o c-sdk /home/ivan/raspberry-pi-pico/pico/pico-extras/src/common/pico_scanvideo/scanvideo.pio /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/pico_extras/src/common/pico_scanvideo/scanvideo.pio.h

pico_scanvideo_scanvideo_pio_h: pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h
pico_scanvideo_scanvideo_pio_h: pico_extras/src/common/pico_scanvideo/scanvideo.pio.h
pico_scanvideo_scanvideo_pio_h: pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/build.make

.PHONY : pico_scanvideo_scanvideo_pio_h

# Rule to build all files generated by this target.
pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/build: pico_scanvideo_scanvideo_pio_h

.PHONY : pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/build

pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/clean:
	cd /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/pico_extras/src/common/pico_scanvideo && $(CMAKE_COMMAND) -P CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/cmake_clean.cmake
.PHONY : pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/clean

pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/depend:
	cd /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic /home/ivan/raspberry-pi-pico/pico/pico-extras/src/common/pico_scanvideo /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/pico_extras/src/common/pico_scanvideo /home/ivan/raspberry-pi-pico/pico_workspace/vasper_mic/build/pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pico_extras/src/common/pico_scanvideo/CMakeFiles/pico_scanvideo_scanvideo_pio_h.dir/depend

