#!/bin/bash

sudo pacman -S unzip

if [ ! -d ~/.local/share/fonts ];
then
	echo "~/.local/share/fonts doesn't exists, creating path..."
	mkdir ~/.local/share/fonts
fi

if [ ! -d ./extra ];
then
	wget https://github.com/google/fonts/archive/main.zip
	unzip main.zip -d extra
fi

for file in "$(find ./ -type f -name '*.ttf')"; do
	cp $file ~/.local/share/fonts/
done

fc-cache -f -v
