#!/bin/bash

ICONS_PATH="$HOME/Wallpapers/.icons"
TYPE="normal"
FACE="mask"

if [[ $1 -eq 0 ]]; then
  FACE="mask"
  TYPE="normal"
elif [[ $1 -eq 1 ]]; then
  FACE="plague"
  TYPE="critical"
fi

notify-send -u $TYPE -a System $2 $3 -i $ICONS_PATH/$FACE.png
