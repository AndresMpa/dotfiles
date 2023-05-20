#!/bin/bash

BASE="/$(pwd)/.config"

# Removing old configurations
{
  rm -rf $BASE/awesome
} || {
  echo "Error removing awesome" >>failures.log
}
{
  rm -rf $BASE/alacritty
} || {
  echo "Error removing alacritty" >>failures.log
}
{
  rm -rf $BASE/rofi
} || {
  echo "Error removing rofi" >>failures.log
}

# Updating pacman configurations
rm -rf $BASE/pacman.conf
cat /etc/pacman.conf >$BASE/pacman.conf

# Configuration folders
{
  cp -r ~/.config/awesome $BASE/
} || {
  echo "Error updating awesome" >>failures.log
}
{
  cp -r ~/.config/alacritty $BASE/
} || {
  echo "Error updating alacritty" >>failures.log
}
{
  cp -r ~/.config/rofi $BASE/
} || {
  echo "Error updating rofi" >>failures.log
}
