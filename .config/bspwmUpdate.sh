#!/bin/bash

BASE="/home/$USER/Escritorio/dotfiles/.config"

# Removing old configurations
rm -rf $BASE/alacritty/ $BASE/bspwm/ $BASE/nitrogen/ $BASE/picom/ $BASE/polybar/ $BASE/rofi/ $BASE/sxhkd/

# Updating pacman configurations
rm -rf $BASE/pacman.conf
cat /etc/pacman.conf >$BASE/pacman.conf

# Configuration folders
cp -r ~/.config/alacritty ~/.config/bspwm ~/.config/nitrogen/ ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/scripts ~/.config/sxhkd ./.config
