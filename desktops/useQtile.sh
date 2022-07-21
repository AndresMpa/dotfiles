#!/bin/bash

echo "Updating"
sudo pacman -Syyu --noconfirm
echo "Installing dependencies"
sudo pacman --noconfirm -S qtile kitty picom rofi
{
	cp ../.config/scripts > ~/.config/scripts 
	cp ../.config/qtile > ~/.config/qtile
	cp ../.config/kitty > ~/.config/kitty
	cp ../.config/picom > ~/.config/picom
	cp ../.config/rofi > ~/.config/rofi
} || {
	echo "Error moving files"
}

# Utilities
sudo pacman --noconfirm -S firefox dunst feh

sudo cat ./.config/pacman.conf > /etc/pacman.conf
