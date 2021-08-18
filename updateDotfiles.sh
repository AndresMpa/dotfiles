#!/bin/bash

# Removing old files
rm -rf brightness-permission.service .xinitrc .zshrc &&
# Removing old wallpapers
rm -rf wallpapers/*
# Removing keyboard layout
rm -rf ./AndresMpa/*
# Adding keyboard layout
cp ~/qmk_firmware/keyboards/crkbd/keymaps/AndresMpa/* ./AndresMpa/
# Copying images
cp -r ~/Imágenes/* ./Wallpapers
# Copying the current files that I am using
cp ~/.xinitrc ~/.zshrc $(pwd) &&
# Copying OS fonts
cp ~/.local/share/fonts/* $(pwd)/fonts &&
#Updating the config files (Polybar, BSPWM, etc)
source .config/updateConfigFiles.sh
