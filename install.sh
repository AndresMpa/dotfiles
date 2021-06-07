#!/bin/bash

echo "
All you need to make this thing work is the next

Utilities
sudo pacman -S rofi
sudo pacman -S tilix
sudo pacman -S firefox
Shell
sudo pacman -S zsh
yay -S powerline fonts-powerline
sudo pacman -Sy zsh-theme-powerlevel9k zsh-syntax-highlighting
echo 'source /usr/share/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
echo 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

echo 'add inside plugins colored-man-pages'

Polybar
sudo pacman -S polybar
sudo pacman -S dbus libxinerama libxrandr libxft libxss libxdg-basedir glib2 pango    gtk3 libnotify
yay -S dunst-git

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

"
