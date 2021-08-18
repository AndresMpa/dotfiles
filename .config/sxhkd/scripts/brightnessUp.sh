#! /bin/bash

brightness=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
brightness=$(expr $brightness + 10)
echo $brightness > /sys/class/backlight/amdgpu_bl0/brightness
