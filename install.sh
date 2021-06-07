#!/bin/bash

echo "
All you need to make this thing work is the next

BSPWM
sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install

mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc

echo 'exec bspwm' > ~/.xinitrc
echo 'exec sxhkd' > ~/.xinitrc

Polybar
sudo pacman -S dbus libxinerama libxrandr libxft libxss libxdg-basedir glib2 pango gtk3 libnotify
sudo pacman -S polybar

Utilities
sudo pacman -S rofi
sudo pacman -S alacritty
sudo pacman -S firefox
yay -S dunst-git

Shell
git clone https://github.com/AndresMpa/desl/ 
cd desl && ./install.sh
"
