#!/bin/sh

# Re settings defaults
source ~/.config/autostart/autostart.sh

# Start flameshot
exec dbus-launch dwm

# Start bspwm
sxhkd &
exec bspwm

