#!/bin/bash

# Removing old configurations
rm -rf alacritty/ bspwm/ nitrogen/ picom/ polybar/ rofi/ script/ sxhkd/ &&
# Brigthness service
rm -rf ./brightness-permission.service &&
cp /etc/systemd/system/brightness-permission.service ./.config &&
# Updating pacman configurations
rm -rf ./pacman.conf
cp /etc/pacman.conf ./.config
# Configuration folders
cp -r ~/.config/alacritty ~/.config/bspwm ~/.config/nitrogen/ ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/scripts ~/.config/sxhkd ./.config
