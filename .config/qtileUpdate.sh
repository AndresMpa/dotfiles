#!/bin/bash

BASE="/home/$USER/Escritorio/dotfiles/.config"

# Removing old configurations
{
	rm -rf $BASE/qtile/
} || {
	echo "Error removing" >>failures.log
}
{
	rm -rf $BASE/kitty/
} || {
	echo "Error removing" >>failures.log
}
{
	rm -rf $BASE/picom/
} || {
	echo "Error removing" >>failures.log
}
{
	rm -rf $BASE/rofi/
} || {
	echo "Error removing" >>failures.log
}

# Updating pacman configurations
rm -rf $BASE/pacman.conf
cat /etc/pacman.conf >$BASE/pacman.conf

# Configuration folders
{
	cp -r ~/.config/qtile $BASE/
} || {
	echo "Error updating qtile" >>failures.log
}
{
	cp -r ~/.config/kitty $BASE/
} || {
	echo "Error updating kitty" >>failures.log
}
{
	cp -r ~/.config/picom $BASE/
} || {
	echo "Error updating picom" >>failures.log
}
{
	cp -r ~/.config/rofi $BASE/
} || {
	echo "Error updating rofi" >>failures.log
}
{
	cp -r ~/.config/scripts $BASE/
} || {
	echo "Error updating scripts" >>failures.log
}
