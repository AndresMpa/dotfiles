# Dotfiles

"Dotfiles" are configuration files, scripts and documentation about an operative system; this repositorie
contains my configuration files including scripts, my shell config, some setting for those tools that I
use; also some recomendations and guides such as "Corne" which contain all the necessary materials for
building your own Corne keyboard such as mine. I high recommend to check some of my daemons if you use
systemctl and AMD GPU like Radeon or something like that

## To do

- [x] Try i3
- [x] Try Awesome (I hate it with all the stretch of my heart, which is sad since I love Lua)
- [x] Try Hyprland (I did not like it), waiting for a more complete "ecosystem"
- [x] Go back to BSPWM
- [x] Look for something else
- [x] Fix and complete install scripts

  - [x] Test BSPWM minimal
  - [x] Test BSPWM custom config
  - [x] Complete BSPWM minimal
  - [x] Complete Qtile minimal
  - [x] Complete Sway minimal
  - [x] Complete BSPWM custom config
  - [x] Complete Qtile custom config
  - [x] Complete Sway custom config
  - [ ] Fix sxhkdrc script

---

## Desktop environments

<h3><a href="./documentati/BSPWM.md">BSPWM</a></h3>

![BSPWM](./examples/bspwm_2.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Xorg](https://img.shields.io/badge/-Xorg-gray?style=for-the-badge&logo=X.Org)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![Bash](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Alacritty](https://img.shields.io/badge/-alacritty-blue?style=for-the-badge&logo=Alacritty)

<h3><a href="./documentati/Qtile.md">Qtile</a></h3>

![Qtile](./examples/qtile_1.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Xorg](https://img.shields.io/badge/-Xorg-gray?style=for-the-badge&logo=X.Org)
![Bash](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Python](https://img.shields.io/badge/-python-yellow?style=for-the-badge&logo=python)
![Kitty](https://img.shields.io/badge/-Kitty-brown?style=for-the-badge&logo=iTerm2)

[Change theme feature](https://youtu.be/i6-JxMmvesE)

<h3><a href="./documentation/Windows.md">Windows</a></h3>

![Windows](./examples/win_1.png)

![Windowss](https://img.shields.io/badge/windows-blue?style=for-the-badge&logo=windows)
![PowerShell](https://img.shields.io/badge/-PowerShell-black?style=for-the-badge&logo=powershell)
![Win Terminal](https://img.shields.io/badge/-Win%20Terminal-black?style=for-the-badge&logo=iTerm2)

<h3><a href="./documentati/Sway.md">Sway</a></h3>

![Sway](./examples/sway_1.jpg)

![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Wezterminal](https://img.shields.io/badge/-Wezterminal-black?style=for-the-badge&logo=powershell)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![JSON](https://img.shields.io/badge/-JSON-gray?style=for-the-badge&logo=json)
![CSS](https://img.shields.io/badge/-css-blue?style=for-the-badge&logo=CSS3)
![Bash](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)

<h3><a href="./documentati/BSPWM.md">BSPWM track #2</a></h3>

![BSPWM track 2](./examples/bspwm_track_2_1.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Xorg](https://img.shields.io/badge/-Xorg-gray?style=for-the-badge&logo=X.Org)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![Lua](https://img.shields.io/badge/-Lua-purple?style=for-the-badge&logo=Lua)
![Zsh](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Wezterminal](https://img.shields.io/badge/-Wezterminal-black?style=for-the-badge&logo=powershell)

<h3><a href="./documentati/BSPWM.md">i3 - Vimium like</a></h3>

![i3](./examples/i3.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Xorg](https://img.shields.io/badge/-Xorg-gray?style=for-the-badge&logo=X.Org)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![Zsh](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Wezterminal](https://img.shields.io/badge/-Wezterminal-black?style=for-the-badge&logo=powershell)



## Installation

If you want to do it yourself source `$install.sh <desktop>`, them choose "y" if
you want the same configuration, type "n" if you want it from scratch.

NOTE: If you see error please add and issue, I'll try yo solve it ^-^

```
$ git clone https://github.com/AndresMpa/dotfiles.git
$ cd dotfiles
$ source ./install.sh
```

If you are using AMD GPU, try "postInstall", it could help you; also if you want
to change your shell source "postInstall" too
```
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

### Util

[SafeEyes](https://github.com/slgobinath/SafeEyes)
I use glasses so I don't want to use bigger ones, it helps me to rest

[Redshift](https://wiki.archlinux.org/title/redshift)
This util change the color or my screen for me, it makes easier to use
the computer
