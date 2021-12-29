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
echo "Nitrogen"
nitrogen --restore &
# Execute Qtile or DE
echo "Qtile"
exec qtile start


