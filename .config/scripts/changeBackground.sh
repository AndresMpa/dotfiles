#!/bin/bash

WALLPAPERS_PATH="/home/$USER/Wallpapers"

currentWallpaper=($(ls $WALLPAPERS_PATH/current/))
themes=($(ls --hide="current" --hide=".icons" $WALLPAPERS_PATH/))
newTheme=$currentWallpaper
len="${#themes[@]}"

echo

for ((option = 0; option < $len; option++)); do
  if [[ ${themes[$option]} == $currentWallpaper ]]; then
    rm $WALLPAPERS_PATH/current/$currentWallpaper

    if [[ $option -eq $(($len - 1)) ]]; then
      cp $WALLPAPERS_PATH/${themes[0]} $WALLPAPERS_PATH/current/
      newTheme=${themes[0]}
    else
      cp $WALLPAPERS_PATH/${themes[$option + 1]} $WALLPAPERS_PATH/current/
      newTheme=${themes[$option + 1]}
    fi
  fi
done

killall swaybg
swaybg -i $WALLPAPERS_PATH/current/$newTheme -m fill
