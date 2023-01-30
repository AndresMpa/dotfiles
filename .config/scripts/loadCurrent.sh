#!/bin/bash

CURRENT_WALLPAPERS_PATH="/home/$USER/Wallpapers/current"
currentWallpaper=($(ls $CURRENT_WALLPAPERS_PATH))

killall swaybg
swaybg -i $CURRENT_WALLPAPERS_PATH/$currentWallpaper -m fill
