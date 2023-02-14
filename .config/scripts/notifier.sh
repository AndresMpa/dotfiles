#!/bin/bash

ICONS_PATH="$HOME/Wallpapers/.icons"
TYPE="normal"
FACE="mask"
EXPIRE_TIME=5000

if [[ $1 -eq 0 ]]; then
  FACE="mask"
  TYPE="normal"
elif [[ $1 -eq 1 ]]; then
  FACE="plague"
  TYPE="critical"
fi

if [ $4 ]; then
  EXPIRE_TIME=$4
fi

notify-send -u $TYPE -a System $2 $3 -i $ICONS_PATH/$FACE.png -t $EXPIRE_TIME
