# Raspberry Pi Pico Docker Build Environment

I was having some trouble getting the Pi Pico dev tools installed and running on my particular version of Linux, so I wrapped them up in a Dockerfile.

## Requirements

- Docker

## How to Use

1. Run `build.sh` to compile the project
2. hold the programming buttonw and power cycle the Pico
3. Run `flash.sh /dev/sdX1` to copy the firmware to the Pico 
