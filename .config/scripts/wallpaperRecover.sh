#!/bin/bash

current=$(cat ../qtile/current.txt)
len="${#theme[@]}"

for ((option = 0; option < $len; option++)); do
	if [[ ${theme[$option]%%.*} == $current ]]; then
		feh --bg-scale ~/Wallpapers/${theme[0]}
	fi
done
