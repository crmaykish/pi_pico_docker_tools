#!/bin/sh
sudo mount $1 /mnt/pico
sudo cp build/project_name.uf2 /mnt/pico
sync
sudo umount /mnt/pico
