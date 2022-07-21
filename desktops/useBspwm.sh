#!/bin/bash

echo "BSPWM from this config"
sudo pacman -Syu --noconfirm
sudo pacman --noconfirm -S libxcb xcb-util xcb-util-wm xcb-util-keysyms
sudo pacman --noconfirm -S dbus libxinerama libxrandr libxft libxss libxdg-basedir glib2 pango gtk3 libnotify
sudo pacman --noconfirm -S alacritty nitrogen polybar bspwm sxhkd picom rofi feh
{
	cp -r ./.config/alacritty > ~/.config/alacritty 
	cp -r ./.config/nitrogen > ~/.config/nitrogen
	cp -r ./.config/scripts > ~/.config/scripts
	cp -r ./.config/polybar > ~/.config/polybar
	cp -r ./.config/sxhkd > ~/.config/sxhkd
	cp -r ./.config/bspwm > ~/.config/bspwm
	cp -r ./.config/picom > ~/.config/picom
	cp -r ./.config/rofi > ~/.config/rofi
} || {
	echo "Error moving files"
}

sudo cat ./.config/pacman.conf > /etc/pacman.conf
