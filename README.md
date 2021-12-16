# Dotfiles

## To do:

- [x] Refactor this readme
- [x] Set up Qtile
- [x] Basic Qtile configuration
- [ ] Advance Qtile configuration
- [x] Configure Qtile
- [ ] Create a custom config
- [x] Improve bar
- [ ] Create color schemas
- [ ] Create moduls
- [ ] Create some IA to embed in Qtile

---

## Check my work

![BSPWM](./examples/bspwm_2.png)
[BSPWM](./documentation/BSPWM.md)

![Qtile](./examples/qtile_1.png)
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
