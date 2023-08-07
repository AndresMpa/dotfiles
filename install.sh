#!/bin/bash

#sudo pacman -S playerctl brightnessctl feh flameshot

echo "Do you want my configuration? [y/n]"
read myConfig

if [ -z $1 ];
then

	echo "Please user './install.sh <desktop>' avalible desktops are bspwm, qtile and sway"
else
	if [[ $1 == "bspwm" ]];
	then
		if [[ "$myConfig" == "y" ]];
		then
			echo "Using my bspwm config"
			source ./desktops/useBspwm.sh
		else
			echo "Using bspwm default config"
			source ./desktops/installBspwm.sh
		fi
		cp ./Wallpapers ~/

		cat ./.xinitrc > ~/.xinitrc
		echo "feh --bg-scale /home/$USER/Wallpapers/"
		echo "exec bspwm" >> ~/.xinitrc
		echo "exec sxhkd" >> ~/.xinitrc
	fi

	if [[ $1 == "qtile" ]];
	then
		if [[ "$myConfig" == "y" ]];
		then
			echo "Using my qtile config"
			source ./desktops/useQtile.sh
		else
			echo "Using qtile default config"
			source ./desktops/installQtile.sh
		fi
	fi

	if [[ $1 == "sway" ]];
	then
		if [[ "$myConfig" == "y" ]];
		then
			echo "Using my sway config"
			source ./desktops/useSway.sh
		else
			echo "Using sway default config"
			source ./desktops/installSway.sh
		fi
	fi
fi
