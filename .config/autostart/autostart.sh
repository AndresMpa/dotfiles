#!/bin/bash

# Disable beep
xset -b

# Disable screelock (You may need to remove this)
xset s off

# Set up keymaps
setxkbmap -layout latam

# Let polybar control backlight 
sudo chmod +777 /sys/class/backlight/amdgpu_bl0/brightness
