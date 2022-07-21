#!/bin/bash

echo "Updating"
sudo pacman -Syyu --noconfirm
echo "Installers"
sudo pacman -S wget curl --noconfirm
echo "Installing dependencies"
sudo pacman -S --noconfirm alacritty bspwm nitrogen picom polybar rofi sxhkd
{
	cp -r ./.config/alacritty > ~/.config/alacritty 
	cp -r ./.config/nitrogen > ~/.config/nitrogen
	cp -r ./.config/scripts > ~/.config/scripts
	cp -r ./.config/polybar > ~/.config/polybar
	cp -r ./.config/sxhkd > ~/.config/sxhkd
	cp -r ./.config/bspwm > ~/.config/bspwm
	cp -r ./.config/picom > ~/.config/picom
	cp -r ./.config/rofi > ~/.config/rofi
} || {
	echo "Error moving files"
}

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

sudo cat ./.config/pacman.conf > /etc/pacman.conf

# Shell
git clone https://github.com/AndresMpa/desl/ 
cd desl && ./install.sh
