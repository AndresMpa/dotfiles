#!/bin/bash

# Moving into script dir
cd /home/andresmpa/Escritorio/dotfiles

{
	# Removing old files
	rm -rf .xinitrc .zshrc

	# Copying the current files that I am using
	cp ~/.xinitrc ~/.zshrc $(pwd)
} || {
	echo "Error on config files"
}

{
	# Removing old wallpapers
	rm -rf Wallpapers/*
	# Copying images
	cp -r ~/Wallpapers/* ./Wallpapers
} || {
	echo "Error updating wallpapers"
}

{
	# Copying OS fonts
	cp ~/.local/share/fonts/* ${PWD}/fonts
} || {
	echo "Error updating fonts"
}

{
	# Removing keyboard layout
	rm -rf ./AndresMpa/*

	# Adding keyboard layout
	cp ~/qmk_firmware/keyboards/crkbd/keymaps/AndresMpa/* ./AndresMpa/
} || {
	echo "Error on Keyboard updating"
}

#Updating the config files
source "${PWD}/.config/$(cat ./.DS.txt)Update.sh" ||
	source "${PWD}/.config/${DESKTOP_SESSION}Update.sh"
