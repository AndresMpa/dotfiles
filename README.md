# Dotfiles

## To do:

- [x] Refactor this readme
- [x] Set up Qtile
- [x] Basic Qtile configuration
- [ ] Advance Qtile configuration
- [x] Configure Qtile
- [ ] Create a custom config
- [ ] Improve bar
- [ ] Create color schemas
- [ ] Create moduls
- [ ] Create some IA to embed in Qtile

---

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
