#!/bin/bash

echo "Updating"
sudo pacman -Syyu --noconfirm
echo "Installers"
sudo pacman -S wget curl --noconfirm

echo -m "Did you source install.sh? [y / n]"
read requirements

if [[ $requirements == "n" ]];
then
	source ./install.sh
fi

echo -n "Do you want to install oh-my-zsh? [y/n]: "
read zsh

if [[ $zsh == "y" ]];
then

	echo "Package managers"
	sudo pacman -S nodejs npm pip python --noconfirm

	wget -P ~/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	wget -P ~/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
	wget -P ~/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
	wget -P ~/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
	fc-cache -f -v

	# Installing oh-my-zsh
	sudo pacman -S zsh fzf neofetch --noconfirm
	rm -rf /home/$USER/.oh-my-zsh
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	chsh -s `which zsh`

	# Adding zsh default configuration
	cat zsh_configuration > ~/.zshrc 

	# Powerlevel10k
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	
	# Commands highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	
	# Auto suggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	
	# Auto complete
	git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
	cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
	source zsh-autocomplete.plugin.zsh

	cp ./.zshrc > ~/.zshrc

	cp $(pwd)/fonts/* ~/.local/share/fonts &&

fi

cp ./.xinitrc > ~/.xinitrc

echo -n "Do you want to install oh-my-zsh? [y/n]: "
read zsh

if [[ $zsh == "y" ]];
then
	cp ./.config/brightness-permission.service > /etc/systemd/system/brightness-permission.service
fi

sudo cp ./.config/pacman.conf > /etc/pacman.conf
