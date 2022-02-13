# Composer
echo "Picom"
picom &
# Keyboard Layout
echo "Keyboard"
setxkbmap latam &
# Disable beep
echo "Beep"
xset -b
# Automount Devices
echo "udiskie"
udiskie -t &
# Wallpaper
echo "Feh"
feh --bg-scale ~/Wallpapers/current/*
# Execute Qtile or DE
echo "Qtile"
exec qtile start


