# Theme dependencies
import sys
import os

current = os.path.dirname(os.path.realpath(__file__))
parent = os.path.dirname(current)
sys.path.append(parent)

from util.color import getTheme

# Qtile dependencies

from libqtile.config import Match
from libqtile import layout

from libqtile.config import Screen
from libqtile import widget
from libqtile import bar

theme = getTheme()

widget_defaults = dict(
    font='sans',
    fontsize=12,
    padding=0,
    margin=0,
)

extension_defaults = widget_defaults.copy()

def getScreen():
    return [
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
                        urgent_border=theme["desk"][0],
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
