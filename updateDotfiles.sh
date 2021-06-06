#!/bin/bash

# Removing old files
rm -rf .xinitrc .zshrc &&
# Copying the current files that I am using
cp ~/.xinitrc ~/.zshrc $(pwd) &&
# Copying OS fonts
cp ~/.local/share/fonts/* $(pwd)/fonts &&
#Updating the config files (Polybar, BSPWM, etc)
source .config/updateConfigFiles.sh
