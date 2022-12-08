#!/bin/bash

sudo pacman -Syu grim slurp swappy neofetch sway waybar wofi mako xorg-xwayland

cp -r ../.config/mako ../.config/wofi/ ../.config/waybar/ ../.config/sway/ ../.config/neofetch/ ~/.config/
