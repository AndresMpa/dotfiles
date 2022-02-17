#!/bin/bash

WALLPAPERS_PATH="/home/$USER/Wallpapers"
CURRENT_PATH="/home/$USER/.config/qtile/current.txt"

oldWallpaper=($(ls --hide="more" $WALLPAPERS_PATH/current/))
theme=($(ls --hide="current" --hide="more" $WALLPAPERS_PATH/))
current=$(cat $CURRENT_PATH)
len="${#theme[@]}"

for ((option = 0; option < $len; option++)); do
	if [[ ${theme[$option]%%.*} == $current ]]; then
		feh --bg-scale $WALLPAPERS_PATH/${theme[$option]}
	fi
done
