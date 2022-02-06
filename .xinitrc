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
bash ~/.config/scripts/wallpaperRecover.sh &
# Execute Qtile or DE
echo "Qtile"
exec qtile start


