from libqtile.utils import guess_terminal
from libqtile.command import lazy
from libqtile.config import Key
from libqtile.lazy import lazy

import subprocess

@lazy.function
def changeTheme(qtile):
    subprocess.call("/home/andresmpa/.config/qtile/util/changeTheme.sh", shell=True)

terminal = guess_terminal()
mod = "mod4"

def keysMapping():
    return [Key(key[0], key[1], *key[2:]) for key in [
        ([mod], "u", changeTheme()),
        # Switch between windows
        ([mod], "h", lazy.layout.left()),
        ([mod], "l", lazy.layout.right()),
        ([mod], "j", lazy.layout.down()),
        ([mod], "k", lazy.layout.up()),
        ([mod], "space", lazy.layout.next()),

        # Switch between windows
        ([mod], "h", lazy.layout.left()),
        ([mod], "l", lazy.layout.right()),
        ([mod], "j", lazy.layout.down()),
        ([mod], "k", lazy.layout.up()),
        ([mod], "space", lazy.layout.next()),

        # Move windows between left/right columns or move up/down in current stack.
        # Moving out of range in Columns layout will create new column.
        ([mod, "shift"], "h", lazy.layout.shuffle_left()),
        ([mod, "shift"], "l", lazy.layout.shuffle_right()),
        ([mod, "shift"], "j", lazy.layout.shuffle_down()),
        ([mod, "shift"], "k", lazy.layout.shuffle_up()),

        # Grow windows. If current window is on the edge of screen and direction
        # will be to screen edge - window would shrink.
        ([mod, "control"], "h", lazy.layout.grow_left()),
        ([mod, "control"], "l", lazy.layout.grow_right()),
        ([mod, "control"], "j", lazy.layout.grow_down()),
        ([mod, "control"], "k", lazy.layout.grow_up()),
        ([mod, "control"], "n", lazy.layout.normalize()),

        # Toggle between split and unsplit sides of stack.
        # Split = all windows displayed
        # Unsplit = 1 window displayed, like Max layout, but still with
        # multiple stack panes
        ([mod, "shift"], "Return", lazy.layout.toggle_split()),

        # Toggle between different layouts as defined below
        ([mod], "Tab", lazy.next_layout()),
        ([mod], "w", lazy.window.kill()),

        # Volume
        ([], "XF86AudioLowerVolume", lazy.spawn("pamixer --decrease 5")),
        ([], "XF86AudioRaiseVolume", lazy.spawn("pamixer --increase 5")),
        ([], "XF86AudioMute", lazy.spawn("pamixer --toggle-mute")),

        # Brightness
        ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
        ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),

        # Print Screen
        ([], "Print", lazy.spawn("flameshot gui")),

        # Terminal
        ([mod], "t", lazy.spawn(terminal)),

        # Navigator
        ([mod], "f", lazy.spawn("firefox")),

        # Communication
        ([mod], "m", lazy.spawn("telegram-desktop")),
        ([mod], "n", lazy.spawn("discord")),

        # Launcher
        # ([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
        ([mod], "r", lazy.spawn("rofi -show drun")),

        ([mod, "control"], "r", lazy.restart()),
        ([mod, "control"], "q", lazy.shutdown()),
    ]]
