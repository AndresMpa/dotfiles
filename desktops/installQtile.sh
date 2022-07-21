#!/bin/bash

echo "Qtile from scratch"
sudo pacman -Syu --noconfirm
sudo pacman --noconfirm -S qtile kitty picom rofi

# Utilities
sudo pacman --noconfirm -S firefox dunst feh

cp ../Wallpapers ~/

cat ../.xinitrc > ~/.xinitrc
echo "feh --bg-scale /home/$USER/Wallpapers/current/*" >> ~/.xinitrc
echo "exec qtile start" >> ~/.xinitrc
