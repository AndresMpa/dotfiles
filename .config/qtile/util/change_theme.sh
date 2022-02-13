#!/bin/bash

oldWallpaper=($(ls --hide="more" /home/andresmpa/Wallpapers/current/))
theme=($(ls --hide="more" /home/andresmpa/Wallpapers/))
current=$(cat /home/andresmpa/.config/qtile/current.txt)
len="${#theme[@]}"

for ((option = 0; option < $len; option++)); do
	if [[ ${theme[$option]%%.*} == $current ]]; then
		rm /home/andresmpa/Wallpapers/current/$oldWallpaper
		if [[ $option -eq $(($len - 1)) ]]; then
			echo "Changing to ${theme[0]%%.*}"
			feh --bg-scale /home/andresmpa/Wallpapers/${theme[0]}
			cp /home/andresmpa/Wallpapers/${theme[0]} /home/andresmpa/Wallpapers/current/
			sed -i "s/$current/${theme[0]%%.*}/" /home/andresmpa/.config/qtile/current.txt
		else
			echo "Changing to ${theme[$option + 1]%%.*}"
			feh --bg-scale /home/andresmpa/Wallpapers/${theme[$option + 1]}
			cp /home/andresmpa/Wallpapers/${theme[$option + 1]} /home/andresmpa/Wallpapers/current/
			sed -i "s/$current/${theme[$option + 1]%%.*}/" /home/andresmpa/.config/qtile/current.txt
		fi
	fi
done

qtile cmd-obj -o cmd -f restart
