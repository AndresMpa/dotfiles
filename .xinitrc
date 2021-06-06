#!/bin/sh

# Start flameshot
exec dbus-launch dwm &

# Start bspwm
sxhkd &
exec bspwm

