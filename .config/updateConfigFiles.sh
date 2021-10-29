#!/bin/bash

# Removing old configurations
rm -rf alacritty/ bspwm/ nitrogen/ picom/ polybar/ rofi/ script/ sxhkd/ &&

# Updating pacman configurations
rm -rf ./pacman.conf
cp /etc/pacman.conf ./.config
# Configuration folders
cp -r ~/.config/alacritty ~/.config/bspwm ~/.config/nitrogen/ ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/scripts ~/.config/sxhkd ./.config
