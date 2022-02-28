#!/bin/bash

WALLPAPERS_PATH="/home/$USER/Wallpapers"
CURRENT_PATH="/home/$USER/.config/qtile/current.txt"

oldWallpaper=($(ls --hide="more" $WALLPAPERS_PATH/current/))
theme=($(ls --hide="current" --hide="more" $WALLPAPERS_PATH/))
current=$(cat $CURRENT_PATH)
len="${#theme[@]}"

if [[ -z $@ ]]; then
	for ((option = 0; option < $len; option++)); do
		if [[ ${theme[$option]%%.*} == $current ]]; then
			rm $WALLPAPERS_PATH/current/$oldWallpaper
			if [[ $option -eq $(($len - 1)) ]]; then
				echo "Changing to ${theme[0]%%.*}"
				feh --bg-scale $WALLPAPERS_PATH/${theme[0]}
				cp $WALLPAPERS_PATH/${theme[0]} $WALLPAPERS_PATH/current/
				sed -i "s/$current/${theme[0]%%.*}/" $CURRENT_PATH
			else
				echo "Changing to ${theme[$option + 1]%%.*}"
				feh --bg-scale $WALLPAPERS_PATH/${theme[$option + 1]}
				cp $WALLPAPERS_PATH/${theme[$option + 1]} $WALLPAPERS_PATH/current/
				sed -i "s/$current/${theme[$option + 1]%%.*}/" $CURRENT_PATH
			fi
		fi
	done
else

	for ((option = 0; option < $len; option++)); do
		if [[ ${theme[$option]%%.*} == $1 ]]; then

			echo "Changing to ${theme[$option]%%.*}"

			rm $WALLPAPERS_PATH/current/$oldWallpaper

			feh --bg-scale $WALLPAPERS_PATH/${theme[$option]}
			cp $WALLPAPERS_PATH/${theme[$option]} $WALLPAPERS_PATH/current/
			sed -i "s/$current/${theme[$option]%%.*}/" $CURRENT_PATH
		fi
	done
fi

qtile cmd-obj -o cmd -f restart
