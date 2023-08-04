#!/bin/bash

if [ ! -d ~/.local/share/fonts ];
then
	echo "~/.local/share/fonts doesn't exists, creating path..."
	mkdir ~/.local/share/fonts
fi

wget https://github.com/google/fonts/archive/main.zip

unzip main.zip -d extra

ttfFile="$(find ./ -type f -name '*.ttf')"

for file in $ttfFile; do
	cp $file ~/.local/share/fonts/
done

fc-cache -f -v
