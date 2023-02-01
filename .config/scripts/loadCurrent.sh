#!/bin/bash

CURRENT_WALLPAPERS_PATH="/home/$USER/Wallpapers/current"
currentWallpaper=($(ls $CURRENT_WALLPAPERS_PATH))

swaymsg output "*" bg $CURRENT_WALLPAPERS_PATH/$currentWallpaper fill
