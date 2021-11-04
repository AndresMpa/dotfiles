#!/bin/bash

echo "Do you want my configuration? [y/n]"
read myConfig

if [[ -z $1 ]];
then
	if [[ $1 == "bspwm" ]];
	then
		if [[ "$myConfig" == "y" ]];
		then
			source ./desktops/useBspwm.sh
		else
			source ./desktops/installBspwm.sh
		fi
	fi

	if [[ $1 == "qtile" ]];
	then
		if [[ "$myConfig" == "y" ]];
		then
			source ./desktops/useQtile.sh
		else
			source ./desktops/installQtile.sh
		fi
	fi
else
	echo "Please user './install.sh <desktop>' avalible desktops are bspwm and qtile"
fi
