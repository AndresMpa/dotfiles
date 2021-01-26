#!/bin/sh

# Re settings defaults
source ~/.config/autostart/autostart.sh

# Start bspwm
sxhkd &
exec bspwm

