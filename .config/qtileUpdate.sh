#!/bin/bash

BASE="/home/$USER/Escritorio/dotfiles/.config"

# Removing old configurations
rm -rf $BASE/kitty/ $BASE/qtile/ $BASE/nitrogen/ $BASE/picom/ $BASE/rofi/

# Updating pacman configurations
rm -rf $BASE/pacman.conf
cat /etc/pacman.conf >$BASE/pacman.conf

# Configuration folders
cp -r ~/.config/kitty ~/.config/qtile ~/.config/nitrogen/ ~/.config/picom ~/.config/rofi ~/.config/scripts $BASE/
