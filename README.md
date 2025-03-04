# Dotfiles

"Dotfiles" are configuration files, scripts and documentation about an operative system; this repositorie
contains my configuration files including scripts, my shell config, some setting for those tools that I
use; also some recomendations and guides such as "Corne" which contain all the necessary materials for
building your own Corne keyboard such as mine. I high recommend to check some of my daemons if you use
systemctl and AMD GPU like Radeon or something like that.

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

<h3><a href="./documentation/BSPWM.md">BSPWM track #2</a></h3>

![BSPWM track 2](./examples/bspwm_track_2_1.png)

![Open source](https://img.shields.io/badge/-Open%20source-black?style=for-the-badge&logo=Open%20Source%20Initiative)
![Arch Linux](https://img.shields.io/badge/-arch%20linux-white?style=for-the-badge&logo=Arch%20Linux)
![Xorg](https://img.shields.io/badge/-Xorg-gray?style=for-the-badge&logo=X.Org)
![C/C++](https://img.shields.io/badge/-C/C++-darkblue?style=for-the-badge&logo=Cplusplus)
![Lua](https://img.shields.io/badge/-Lua-purple?style=for-the-badge&logo=Lua)
![Zsh](https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash)
![Wezterminal](https://img.shields.io/badge/-Wezterminal-black?style=for-the-badge&logo=powershell)

<h3><a href="./documentation/i3.md">i3 - Vimium like</a></h3>

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

[Ollama](https://ollama.ai/)
I'm using this with an extension for VSCodium call [CodeGPT](https://www.codegpt.co/)
I'm using it to get my own GPT working on VSCodium, to install it I use [this](https://github.com/jmorganca/ollama/blob/main/docs/linux.md) following the instruction [here](https://docs.codegpt.co/es/docs/tutorial-ai-providers/ollama)

[Plymouth](https://wiki.archlinux.org/title/Plymouth)
Grapich boot with different simple animations

### Solved issues

- [Watchdog did not stop](https://unix.stackexchange.com/questions/249654/message-at-shutdown-watchdog-did-not-stop)
- [Bad orphan inode](https://search.brave.com/search?q=bad+orphan+inode&source=android&summary=1&conversation=929622c8bb8063ac8d3b27)
- [Acpi bios error (bug) failure creating named object](https://forum.manjaro.org/t/acpi-bios-error-on-every-startup-creative-x-ae5/152541/21)
- [To silent the upper parameter](https://wiki.archlinux.org/title/Kernel_parameters#systemd-boot)
- [Random freezing](https://bbs.archlinux.org/viewtopic.php?pid=1783437#p1783437)
- [X on screen](https://www.reddit.com/r/bspwm/comments/vsq6gy/remove_the_x_pointer_outside_of_focused_windows/)
- [Icon theme for cursor](https://stackoverflow.com/questions/70944428/how-to-make-it-to-set-the-lxappearance-cursor-with-the-start-of-qtile)
