# Set minimum required version of CMake
cmake_minimum_required(VERSION 3.12)
#include build functions from Pico SDK
include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)
# Set name of project (as PROJECT_NAME) and C/C++ Standards
project(hello_gpout)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
# Creates a pico-sdk subdirectory in our project for the libraries
pico_sdk_init()
add_executable(${PROJECT_NAME}
        hello_gpout.c
        )

# pull in common dependencies
target_link_libraries(${PROJECT_NAME} pico_stdlib hardware_i2c )


# enable usb output, disable uart output
pico_enable_stdio_usb(hello_gpout 1)
pico_enable_stdio_uart(hello_gpout 1)

# create map/bin/hex file etc.
pico_add_extra_outputs(${PROJECT_NAME})

# add url via pico_set_program_url
# example_auto_set_url(hello_gpout)