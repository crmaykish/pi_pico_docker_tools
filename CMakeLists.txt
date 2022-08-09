cmake_minimum_required(VERSION 3.13)

# initialize the SDK based on PICO_SDK_PATH
# note: this must happen before project()
include(pico_sdk_import.cmake)

project(project_name)

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

add_executable(project_name
    main.c
)

# Add pico_stdlib library which aggregates commonly used features
target_link_libraries(project_name pico_stdlib pico_multicore)

pico_enable_stdio_usb(project_name 1)
pico_enable_stdio_uart(project_name 0)

# create map/bin/hex/uf2 file in addition to ELF.
pico_add_extra_outputs(project_name)
