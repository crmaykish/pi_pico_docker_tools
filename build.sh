#!/bin/sh
# Open a Docker container and build the Pico project

# Build the "picodev" image
docker build -t picodev .

# Launch a "picodev" container and run the build script
docker run --user pico -v $(pwd):/home/pico/Workspace -it picodev bash /home/pico/Workspace/build_internal.sh
