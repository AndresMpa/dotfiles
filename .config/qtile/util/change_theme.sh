#!/bin/bash

theme=($(ls --hide="more" ~/Wallpapers/))
current=$(cat ~/.config/qtile/current.txt)
len="${#theme[@]}"

for ((option = 0; option < $len; option++)); do
	if [[ ${theme[$option]%%.*} == $current ]]; then
		if [[ $option -eq $(($len - 1)) ]]; then
			echo "Changing to ${theme[0]%%.*}"
			feh --bg-scale ~/Wallpapers/${theme[0]}
			sed -i "s/$current/${theme[0]%%.*}/" ~/.config/qtile/current.txt
		else
			echo "Changing to ${theme[$option + 1]%%.*}"
			feh --bg-scale ~/Wallpapers/${theme[$option + 1]}
			sed -i "s/$current/${theme[$option + 1]%%.*}/" ~/.config/qtile/current.txt
		fi
	fi
done

qtile cmd-obj -o cmd -f restart
