#!/bin/bash

BASE="/$(pwd)/.config"

# Removing old configurations
{
	rm -rf $BASE/i3
} || {
	echo "Error removing i3 configuration" >>failures.log
}
{
	rm -rf $BASE/wezterm
} || {
	echo "Error removing wezterm" >>failures.log
}

# Configuration folders
{
	cp -r ~/.config/i3 $BASE/
} || {
	echo "Error updating i3 configuration" >>failures.log
}
{
	cp -r ~/.config/wezterm $BASE/
} || {
	echo "Error updating wezterm" >>failures.log
}
