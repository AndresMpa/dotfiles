# Disable beep
xset -b
# Keyboard Layout
setxkbmap latam
# Network
nm-applet & 
# Composer
picom & 2> /dev/null
# Wallpaper
feh --bg-scale /home/andresmpa/Wallpapers/current/*
# Execute Qtile or DE
exec qtile start
