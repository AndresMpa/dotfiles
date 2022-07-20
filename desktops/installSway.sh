#!/bin/bash

echo "Installing Sway - Wayland"

sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S wget

sudo pacman --noconfirm -S wayland

sudo pacman --noconfirm -S sway swaybg swaylock swayidle seatd wlroots
mkdir ~/.config/sway/
cat /etc/sway/config > ~/.config/sway/config

sudo pacman --noconfirm -S waybar
wget https://raw.githubusercontent.com/Alexays/Waybar/master/resources/config
md ~/.config/waybar/
mv config ~/.config/waybar/

sudo pacman --noconfirm -S wofi
md ~/.config/wofi
touch ~/.config/wofi/style.css

sudo pacman --noconfirm -S wezterm
md ~/.config/wezterm
touch ~/.config/wezterm/wezterm.lua

sudo pacman --noconfirm -S firefox

yay --noconfirm -S mako
yay --noconfirm -S greetd greetd-tuigreet
sudo cat ../etc/greetd/config.toml >> /etc/greetd/config.toml
