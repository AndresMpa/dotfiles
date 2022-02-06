from libqtile.utils import guess_terminal
from libqtile.config import Key

from libqtile.command import lazy

mod = "mod4"
terminal = guess_terminal()

keys = [Key(key[0], key[1], *key[2:]) for key in [
    # Switch between windows
    ([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    ([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    ([mod], "j", lazy.layout.down(), desc="Move focus down"),
    ([mod], "k", lazy.layout.up(), desc="Move focus up"),
    ([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Switch between windows
    ([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    ([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    ([mod], "j", lazy.layout.down(), desc="Move focus down"),
    ([mod], "k", lazy.layout.up(), desc="Move focus up"),
    ([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    ([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    ([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    ([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    ([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    ([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    ([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    ([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    ([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    ([mod, "control"], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    ([mod, "shift"], "Return", lazy.layout.toggle_split(),
     desc="Toggle between split and unsplit sides of stack"),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    ([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn("pamixer --decrease 5")),
    ([], "XF86AudioRaiseVolume", lazy.spawn("pamixer --increase 5")),
    ([], "XF86AudioMute", lazy.spawn("pamixer --toggle-mute")),

    # Brightness
    ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),

    # Print Screen
    ([], "Print", lazy.spawn("flameshot"), desc="Launch utility for screenshots"),

    # Terminal
    ([mod], "t", lazy.spawn(terminal), desc="Launch terminal"),

    # Navigator
    ([mod], "f", lazy.spawn("firefox"), desc="Launch firefox"),

    # Communication
    ([mod], "m", lazy.spawn("telegram-desktop"), desc="Launch telegram"),
    ([mod], "n", lazy.spawn("discord"), desc="Launch discord"),

    # Launcher
    # ([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    ([mod], "r", lazy.spawn("rofi -show drun"), desc="Launch rofi"),

    ([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    ([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]]
