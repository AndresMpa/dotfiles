#!/bin/bash

echo "All you need to make this thing work is the next"

echo "BSPWM"
sudo pacman --noconfirm -Syu libxcb xcb-util xcb-util-wm xcb-util-keysyms
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install
cd

mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc

echo "Polybar"
sudo pacman --noconfirm -S dbus libxinerama libxrandr libxft libxss libxdg-basedir glib2 pango gtk3 libnotify
sudo pacman --noconfirm -S polybar

# Utilities
sudo pacman --noconfirm -S alacritty firefox rofi feh

# Hardware
echo -n "Do you use amdgpu_bl0? [y/n]: "
read brightness

if [[ $brightness == "y" ]];
then
	cp ./.config/brightness-permission.service > /etc/systemd/system/brightness-permission.service
fi

cp ../Wallpapers ~/

cat ../.xinitrc > ~/.xinitrc
echo "feh --bg-scale /home/$USER/Wallpapers/"
echo "exec bspwm" >> ~/.xinitrc
echo "exec sxhkd" >> ~/.xinitrc

# Shell
git clone https://github.com/AndresMpa/desl/ 
cd desl && ./install.sh
