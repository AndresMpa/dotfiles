#!/bin/bash

#Getting the avalible themes
schemas=($(ls ~/.config/polybar/schemas/*.ini))
len="${#schemas[@]}"
change=1

#Reading the schemas

for ((theme = 0; theme < $len; theme++)); do
	# I compare if the first line of the colors.ini file is equal to
	# the current theme
	current=${schemas[$theme]}
	if [[ $change -eq 1 && $(head -n 1 ~/.config/polybar/colors.ini) == ";${current:40}" ]]; then
		change=0
		if [[ $theme -eq $(($len - 1)) ]]; then
			newSchema=${schemas[0]}
			echo "Theme changed to ${newSchema:40:-4}"
			cat $newSchema >~/.config/polybar/colors.ini
			feh --bg-fill ~/Imágenes/${newSchema:40:-4}* &
		else
			newSchema=${schemas[$(($theme + 1))]}
			echo "Theme changed to ${newSchema:40:-4}"
			cat $newSchema >~/.config/polybar/colors.ini
			feh --bg-fill ~/Imágenes/${newSchema:40:-4}* &
		fi
	fi
done

source ~/.config/polybar/launch.sh
