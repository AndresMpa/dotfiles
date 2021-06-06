#!/bin/bash

# Checking your default screen
# xrandr | awk '$2 == "connected"{print $1}'

intern=eDP
extern=HDMI-A-0

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    # xrandr --output $extern --set underscan on --set "underscan vborder" 25 --set "underscan hborder" 40
    
    xrandr --output "$intern" --primary --auto --output "$extern" --right-of "$intern" --auto

    # In case of having troubles with audio use:
    # pavucontrol
fi

# Reference
# https://wiki.archlinux.org/title/Xrandr
# https://unix.stackexchange.com/questions/390907/sound-via-hdmi-on-arch-linux
