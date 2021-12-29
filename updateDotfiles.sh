#!/bin/bash

# Removing old files
rm -rf brightness-permission.service .xinitrc .zshrc

# Removing old wallpapers
rm -rf wallpapers/*

# Removing keyboard layout
rm -rf ./AndresMpa/*

# Removing services
rm -rf ./*.service

# Adding keyboard layout
cp ~/qmk_firmware/keyboards/crkbd/keymaps/AndresMpa/* ./AndresMpa/

# Copying images
cp -r ~/Imágenes/* ./Wallpapers

# Copying the current files that I am using
cp ~/.xinitrc ~/.zshrc $(pwd)

# Copying OS fonts
cp ~/.local/share/fonts/* $(pwd)/fonts

# Copying custom services
cp /etc/systemd/system/brightness-permission.service ./etc/systemd/system/

#Updating the config files
if [[ $DESKTOP_SESSION -eq "qtile" ]]; then
	source ./.config/updateQtile.sh
else
	echo ./.config/updateBspwm.sh
fi
