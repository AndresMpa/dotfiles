#!/bin/bash
intern=eDP
extern=HDMI-A-0

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    # Set xrandr by giving it a concrete resolitution
    #xrandr --output HDMI-A-0 --mode 1280x720
    xrandr --output "$intern" --off --output "$extern" --auto
fi
