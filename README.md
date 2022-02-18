# Dotfiles

## To do

- [ ] Find something new to create

---

## Time programming this week

[![wakatime](https://wakatime.com/badge/github/AndresMpa/dotfiles.svg)](https://wakatime.com/badge/github/AndresMpa/dotfiles)

## Check my work

![BSPWM](./examples/bspwm_2.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![Bash](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Alacritty](https://img.shields.io/badge/-alacritty-blue?style=for-the-badge&logo=Alacritty)

[BSPWM](./documentation/BSPWM.md)

![Qtile](./examples/qtile_1.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Bash](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Python](https://img.shields.io/badge/-python-yellow?style=for-the-badge&logo=python)
![Kitty](https://img.shields.io/badge/-Kitty-brown?style=for-the-badge&logo=iTerm2)

[Qtile](./documentation/Qtile.md)

## Installation

If you want to do it yourself source "install.sh", if
you also want the same configuration I'm using, source
"use.sh"

```
$ git clone https://github.com/AndresMpa/dotfiles.git
$ cd dotfiles
$ source ./install.sh
```

## Keyboard configuration

![Corne keyboard](./examples/corne.jpg)
![keymap](./examples/keymap.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Linux](https://img.shields.io/badge/-Linux-black?style=for-the-badge&logo=Linux)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)

[Corne](./documentation/Keymap.md)

### Installation & configuration of QMK

```
sudo pacman --needed --noconfirm -S git python-pip libffi
sudo pacman -Syyu qmk
qmk setup
qmk config user.keyboard=crkbd/rev1
qmk config user.keymap=AndresMpa
qmk new-keymap
qmk compile -kb crkbd -km AndresMpa
```
