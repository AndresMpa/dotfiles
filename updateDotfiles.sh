#!/bin/bash

# Moving into script dir
cd /home/$USER/Escritorio/dotfiles

{
	if [[ -f ~/.xinitrc ]];
	then
		# Removing old files
		rm -rf .xinitrc 

		# Copying the current files that I am using
		cp ~/.xinitrc  $(pwd)
	else
		echo "Currently not using X server"
	fi
} || {
	echo "Error on config files" >>failures.log
}

{
	cat ~/.zshrc >./.zshrc
} || {
	echo "Error on zshrc" >>failures.log
}

{
	cat ~/.gitconfig >./.gitconfig
} || {
	echo "Error on gitconfig" >>failures.log
}

{
	cp ~/.config/scripts/* ./.config/scripts/
} || {
	echo "Error on custom scripts" >>failures.log
}

{
	# Removing old wallpapers
	rm -rf Wallpapers/*
	# Copying images
	cp -r ~/Wallpapers/* ./Wallpapers
} || {
	echo "Error updating wallpapers" >>failures.log
}

{
	# Copying OS fonts
	cp ~/.local/share/fonts/* ${PWD}/fonts
} || {
	echo "Error updating fonts" >>failures.log
}

{
	if [[ -f ~/qmk_firmware ]];
	then
		# Removing keyboard layout
		rm -rf ./AndresMpa/*

		# Adding keyboard layout
		cp ~/qmk_firmware/keyboards/crkbd/keymaps/AndresMpa/* ./AndresMpa/	
	else
		echo "QMK is not installed"
	fi
} || {
	echo "Error on Keyboard updating" >>failures.log
}

#Updating the config files
source "${PWD}/.config/$(cat ./.DS.txt)Update.sh" 2>/dev/null ||
	source "${PWD}/.config/${DESKTOP_SESSION}Update.sh" 2>/dev/null
