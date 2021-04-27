#!/bin/bash

#Removing old files
rm -rf custom.zsh .xinitrc .zshrc &&
#Copying the current files that I am using
cp ~/.xinitrc ~/.zshrc ~/.oh-my-zsh/custom/custom.zsh ~/Escritorio/my_proyects/dotfiles/ &&
#Updating the config files (Polybar, BSPWM, etc)
source .config/updateConfigFiles.sh

