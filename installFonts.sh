#!/bin/bash

cp ./fonts/* ~/.local/share/fonts/

wget https://github.com/google/fonts/archive/main.zip

unzip main.zip

mv $0 main

ttfFile="$(find ./ -type f -name '*.ttf')"

for file in $ttfFile;
do
  mv $file ~/.local/share/fonts/
done

fc-cache -f -v
