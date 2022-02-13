#!/bin/bash

theme=($(ls --hide="more" /home/andresmpa/Wallpapers/))
current=$(cat ~/.config/qtile/current.txt)
len="${#theme[@]}"

for ((option = 0; option < $len; option++)); do
	if [[ ${theme[$option]%%.*} == $current ]]; then
		feh --bg-scale ~/Wallpapers/${theme[$option]}
	fi
done
