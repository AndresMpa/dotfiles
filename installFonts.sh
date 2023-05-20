#!/bin/bash

cp ./fonts/* ~/.local/share/fonts/

wget https://github.com/google/fonts/archive/main.zip

unzip main.zip

cp $0 main

ttfFile="$(find ./ -type f -name '*.ttf')"

if [ -z ~/.local/share/fonts ];
then
	mkdir ~/.local/share/fonts
fi

for file in $ttfFile; do
	cp $file ~/.local/share/fonts/
done

fc-cache -f -v
