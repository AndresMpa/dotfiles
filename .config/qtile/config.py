from libqtile.config import Key
from libqtile.lazy import lazy

from libqtile.config import Click, Drag

from libqtile.config import Group

from libqtile.config import Match
from libqtile import layout

from libqtile.config import Screen
from libqtile import widget
from libqtile import bar

from setting.keys import keysMapping
from util.color import getTheme

mod = "mod4"
keys = keysMapping()

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
    # Click([mod, "control"], "Button2", lazy.windows.toggle_floating())
]

groups = [Group(item) for item in [
    "", "", "切", "", "", "", "", "ﴬ", "力"
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key(
            [mod],
            actual_key,
            lazy.group[group.name].toscreen(toggle=True)
        ),
        # Send window to workspace N
        Key(
            [mod, "shift"],
            actual_key,
            lazy.window.togroup(group.name)
        )
    ])

theme = getTheme()


layouts = [
    layout.Max(),
    layout.Bsp(
        border_focus=theme["layout"][0],
        border_normal=theme["layout"][1],
        margin=4,
    ),
    layout.Columns(
        border_focus=theme["layout"][0],
        border_focus_stack=theme["layout"][0],
        border_normal=theme["layout"][1],
        border_normal_stack=theme["layout"][1],
        border_width=4,
        margin=4,
    ),
    # layout.Stack(num_stacks=2),
    # layout.Matrix(margin=4),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
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
                # Icon
                widget.TextBox(
                    "",
                    background=theme["icon"][0],
                    foreground=theme["icon"][1],
                    fontsize=32,
                    margin=-2,
                    padding=4
                ),
                widget.TextBox(
                    "",
                    background=theme["icon"][2],
                    foreground=theme["icon"][3],
                    fontsize=24,
                    padding=-2
                ),


                # Desk
                widget.GroupBox(
                    padding=3,
                    fontsize=16,
                    active=theme["desk"][0],
                    inactive=theme["desk"][1],
                    background=theme["desk"][2],
                    this_current_screen_border=theme["desk"][3],
                ),
                widget.Moc(
                    background=theme["desk"][4],
                ),
                widget.TextBox(
                    "",
                    foreground=theme["desk"][2],
                    background=theme["desk"][4],
                    fontsize=24,
                    padding=-2
                ),

                widget.Spacer(),

                widget.TextBox(
                    " ",
                    foreground=theme["manager"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.Backlight(
                    fmt=" {}",
                    background=theme["manager"][0],
                    foreground=theme["manager"][1],
                    backlight_name="amdgpu_bl0",
                    change_command="brightnessctl set {0}%",
                    brightness_file="/sys/class/backlight/amdgpu_bl0/brightness",
                    max_brightness_file="/sys/class/backlight/amdgpu_bl0/max_brightness",
                ),
                widget.TextBox(
                    "",
                    background=theme["manager"][0],
                    foreground=theme["manager"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.Volume(
                    fmt=" {}",
                    background=theme["manager"][0],
                    foreground=theme["manager"][1],
                ),
                widget.TextBox(
                    "",
                    background=theme["manager"][0],
                    foreground=theme["manager"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.Battery(
                    background=theme["manager"][0],
                    foreground=theme["manager"][1],
                    low_foreground=theme["manager"][2],
                    full_char="",
                    empty_char="",
                    charge_char="",
                    discharge_char="",
                    # hide_threshold=0.9,
                    show_short_text=False,
                    format="{char} {percent:2.0%}",
                ),
                widget.TextBox(
                    "",
                    background=theme["manager"][0],
                    foreground=theme["manager"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.ThermalSensor(
                    background=theme["manager"][0],
                    foreground=theme["manager"][1],
                    fmt=" {}",
                ),
                widget.TextBox(
                    "",
                    foreground=theme["manager"][0],
                    fontsize=24,
                    padding=-2,
                    margin=0
                ),

                widget.Spacer(),

                widget.TextBox(
                    " ",
                    foreground=theme["util"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.Clipboard(
                    background=theme["util"][0],
                    foreground=theme["util"][1],
                ),
                widget.Systray(
                    background=theme["util"][0],
                    foreground=theme["util"][1],
                    padding=3,
                ),
                widget.CheckUpdates(
                    background=theme["util"][0],
                    foreground=theme["util"][1],
                    colour_have_updates=theme["util"][1],
                    restart_indicator="",
                    no_update_string="﫟",
                    display_format="",
                    fontsize=23,
                    padding=4,
                ),
                widget.CurrentLayoutIcon(
                    background=theme["util"][0],
                    foreground=theme["util"][1],
                    padding=9,
                ),
                widget.Clock(
                    background=theme["util"][0],
                    foreground=theme["util"][1],
                    format='%a %d/%m/%Y  %I:%M %p'
                ),
                widget.TextBox(
                    " ",
                    background=theme["icon"][2],
                    foreground=theme["icon"][0],
                    fontsize=24,
                    padding=-10
                ),
                widget.QuickExit(
                    background=theme["icon"][0],
                    foreground=theme["icon"][1],
                    countdown_format="{}",
                    default_text=" ",
                    fontsize=20
                ),
            ],
            24,
            margin=5,
            opacity=1,
            background=theme["bar"],
        ),
    ),
]
# widget.Prompt(),
# widget.WindowName(),
# widget.ThermalSensor(),

#    

dgroups_key_binder = None
dgroups_app_rules = []  # type: List

focus_on_window_activation = "smart"
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False

reconfigure_screens = True
auto_fullscreen = True
auto_minimize = True

wmname = "LG3D"
