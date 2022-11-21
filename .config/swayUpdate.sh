#!/bin/bash

BASE="/$(pwd)/.config"

# Removing old configurations
{
	rm -rf $BASE/sway
} || {
	echo "Error removing sway" >>failures.log
}
{
	rm -rf $BASE/waybar
} || {
	echo "Error removing waybar" >>failures.log
}
{
	rm -rf $BASE/wofi
} || {
	echo "Error removing wofi" >>failures.log
}
{
	rm -rf $BASE/wezterm
} || {
	echo "Error removing wezterm" >>failures.log
}
{
	rm -rf $BASE/mako
} || {
	echo "Error removing mako" >>failures.log
}

# Updating pacman configurations
rm -rf $BASE/pacman.conf
cat /etc/pacman.conf >$BASE/pacman.conf

# Configuration folders
{
	cp -r ~/.config/sway $BASE/
} || {
	echo "Error updating sway" >>failures.log
}
{
	cp -r ~/.config/waybar $BASE/
} || {
	echo "Error updating waybar" >>failures.log
}
{
	cp -r ~/.config/wofi $BASE/
} || {
	echo "Error updating wofi" >>failures.log
}
{
	cp -r ~/.config/wezterm $BASE/
} || {
	echo "Error updating wezterm" >>failures.log
}
{
	cp -r ~/.config/mako $BASE/
} || {
	echo "Error updating mako" >>failures.log
}
