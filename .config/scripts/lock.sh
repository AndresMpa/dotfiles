#!/bin/bash

swayidle \
  timeout 10 'swaymsg "output * dpms off"' \
  resume 'swaymsg "output * dpms on"' &

swaylock \
  --clock \
  --screenshots \
  --indicator \
  --indicator-radius 100 \
  --indicator-thickness 7 \
  --effect-scale 0.5 \
  --effect-blur 7x5 \
  --effect-scale 2 \
  --effect-vignette 0.5:0.5 \
  --ring-color 0084ff \
  --key-hl-color 008833 \
  --line-color 00000000 \
  --inside-color 00000088 \
  --separator-color 00000000 \
  --fade-in 0.2 &&
  kill %%
