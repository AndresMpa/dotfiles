#!/bin/bash

echo "Sway from scratch"
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S wayland sway swaybg swaylock swayidle seatd wlroots
sudo pacman --noconfirm -S wezterm waybar wofi

# Generating dirs
mkdir -p ~/.config/{sway,waybar,wezterm,wofi}

# Default config for Sway
cp /etc/sway/config ~/.config/sway/config

# Waybar
touch ~/.config/waybar/style.css
touch ~/.config/waybar/config

# Default config for Waybar
wget https://raw.githubusercontent.com/Alexays/Waybar/master/resources/config
mv config ~/.config/waybar/config

# Wezterm
touch ~/.config/wezterm/wezterm.lua
# Wofi
touch ~/.config/wofi/style.css

# Utilities
sudo pacman --noconfirm -S firefox
yay --noconfirm -S mako greetd greetd-tuigreet
sudo cat ../etc/greetd/config.toml >> /etc/greetd/config.toml
