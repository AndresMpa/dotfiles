from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Match, Screen
from libqtile.utils import guess_terminal
from libqtile.config import Key
from libqtile.lazy import lazy

mod = "mod4"
terminal = guess_terminal()

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod, "control"], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    # Volume
    Key([], "XF86AudioLowerVolume", lazy.spawn("pamixer --decrease 5")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pamixer --increase 5")),
    Key([], "XF86AudioMute", lazy.spawn("pamixer --toggle-mute")),

    # Brightness
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),

    # Print Screen
    Key([], "Print", lazy.spawn("flameshot"), desc="Launch utility for screenshots"),

    # Terminal
    Key([mod], "t", lazy.spawn(terminal), desc="Launch terminal"),

    # Navigator
    Key([mod], "f", lazy.spawn("firefox"), desc="Launch firefox"),

    # Communication
    Key([mod], "m", lazy.spawn("telegram-desktop"), desc="Launch telegram"),
    Key([mod], "n", lazy.spawn("discord"), desc="Launch discord"),

    # Launcher
    # Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "r", lazy.spawn("rofi -show drun"), desc="Launch rofi"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]

groups = [Group(item) for item in [
    "", "", "切", "", "", "", "", "ﴬ", "力"
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])

layouts = [
    layout.Columns(

        border_focus="#ffffff",
        border_focus_stack='#69676c',
        border_normal="#49474f",
        border_normal_stack="#49474f",
        border_width=2,
        margin=4,
    ),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    layout.Bsp(
        border_focus="#ffffff",
        border_normal="#49474f",
        margin=4,
    ),
    layout.Matrix(
        margin=4,
    ),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='sans',
    fontsize=12,
    padding=0,
    margin=0,
)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.TextBox(
                    "",
                    background="#363537",
                    foreground="#ffffff",
                    fontsize=32,
                    margin=-2,
                    padding=4
                ),
                widget.TextBox(
                    "",
                    background="#69676c",
                    foreground="#363537",
                    fontsize=24,
                    padding=-2
                ),
                widget.GroupBox(
                    padding=3,
                    fontsize=16,
                    active="#ffffff",
                    inactive="#49474f",
                    background="#69676c",
                    this_current_screen_border="#ffffff",
                ),
                widget.Moc(
                    background="#69676c",
                ),
                widget.TextBox(
                    "",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-2
                ),

                widget.Spacer(),

                widget.TextBox(
                    " ",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-10
                ),
                widget.Backlight(
                    fmt=" {}",
                    background="#69676c",
                    backlight_name="amdgpu_bl0",
                    change_command="brightnessctl set -{0}%",
                    brightness_file="/sys/class/backlight/amdgpu_bl0/brightness",
                    max_brightness_file="/sys/class/backlight/amdgpu_bl0/max_brightness",
                ),
                widget.TextBox(
                    "",
                    background="#69676c",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-10
                ),
                widget.Volume(
                    fmt=" {}",
                    background="#69676c",
                ),
                widget.TextBox(
                    "",
                    background="#69676c",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-10
                ),
                widget.ThermalSensor(
                    background="#69676c",
                    fmt=" {}",
                ),
                widget.TextBox(
                    "",
                    foreground="#69676c",
                    fontsize=24,
                    margin=0,
                    padding=-2
                ),
                widget.Spacer(),
                widget.TextBox(
                    " ",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-10
                ),
                widget.Clipboard(
                    background="#69676c",
                ),
                widget.Systray(
                    background="#69676c",
                    padding=3,
                    margin=0,
                ),
                widget.TextBox(
                    " ",
                    background="#69676c",
                    foreground="#69676c",
                    fontsize=24,
                    padding=-10
                ),
                widget.CheckUpdates(
                    background="#69676c",
                    colour_have_updates="#ffffff",
                    restart_indicator="",
                    no_update_string="﫟",
                    display_format="",
                    fontsize=23,
                ),
                widget.CurrentLayoutIcon(
                    background="#69676c",
                    padding=9,
                ),
                #widget.CurrentLayout(
                # background="#69676c",
                # padding=8,
                # ),
                widget.Clock(
                    background="#69676c",
                    format='%a %d/%m/%Y  %I:%M %p'
                ),
                widget.TextBox(
                    " ",
                    background="#69676c",
                    foreground="#363537",
                    fontsize=24,
                    padding=-10
                ),
                widget.QuickExit(
                    background="#363537",
                    countdown_format="{}",
                    default_text="  ",
                    fontsize=20
                ),
            ],
            24,
            margin=5,
            opacity=1,
            background='#363537',
        ),
    ),
]
# widget.Prompt(),
# widget.WindowName(),
# widget.ThermalSensor(),

# widget.Battery(),
# widget.BatteryIcon(),

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
    # Click([mod, "control"], "Button2", lazy.windows.toggle_floating())

]

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False

auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True
wmname = "LG3D"
