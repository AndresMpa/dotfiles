#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using config location ~/.config/polybar/config
# you have to invoce the bar like it was named in [bar/arch_bar]

# Uncomment this and comment the next line if you want to make
# changes in config

# polybar -c ~/.config/polybar/config arch_bar -r &

polybar -c ~/.config/polybar/config arch_bar &

