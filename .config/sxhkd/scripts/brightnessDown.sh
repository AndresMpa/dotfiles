#!/bin/bash

brillo=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
echo $(($brillo - 5)) > /sys/class/backlight/amdgpu_bl0/brightness
