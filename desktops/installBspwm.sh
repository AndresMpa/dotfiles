#!/bin/bash

echo "BSPWM from scratch"
sudo pacman -Syu --noconfirm
sudo pacman --noconfirm -S libxcb xcb-util xcb-util-wm xcb-util-keysyms
sudo pacman --noconfirm -S bspwm sxhkd

mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc

echo "Polybar"
sudo pacman --noconfirm -S dbus libxinerama libxrandr libxft libxss libxdg-basedir glib2 pango gtk3 libnotify
sudo pacman --noconfirm -S polybar

# Utilities
sudo pacman --noconfirm -S alacritty firefox rofi feh
