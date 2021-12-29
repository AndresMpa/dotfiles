#!/bin/bash

# Removing old configurations
rm -rf kitty/ qtile/ nitrogen/ picom/ rofi/ script/

# Updating pacman configurations
rm -rf ./pacman.conf
cp /etc/pacman.conf ./.config
# Configuration folders
cp -r ~/.config/kitty ~/.config/nitrogen/ ~/.config/picom ~/.config/rofi ~/.config/scripts ./.config
