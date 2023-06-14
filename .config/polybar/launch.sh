#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -r -c $HOME/.config/polybar/config.ini top_bar &

if type "xrandr"; then
  for monitors in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [[ $monitors == *"HDMI"* ]]; then
      MONITOR=$monitors polybar --reload extra_top_bar &
    else
      MONITOR=$monitors polybar --reload top_bar &
    fi
  done
else
  polybar --reload top_bar &
fi

echo "Polybar launched"
