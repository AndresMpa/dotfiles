#!/bin/bash

# Disable beep
xset -b

# Disable screelock (You may need to remove this)
xset s off

# Set up keymaps
setxkbmap -layout latam

# Let polybar control backlight 
sudo chmod +666 /sys/class/backlight/amdgpu_bl0/brightness
#sudo chown -R andresmp /sys/class/backlight/amdgpu_bl0/brightness

# Start wifi daemon (You can commet this to save process)
#exec ./wifi.sh 2> /dev/null
