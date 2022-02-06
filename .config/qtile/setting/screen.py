from libqtile import layout
from libqtile.config import Match

from libqtile import bar
from libqtile import widget
from libqtile.config import Screen

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
                    background="#360054",
                    foreground="#ffac34",
                    fontsize=32,
                    margin=-2,
                    padding=4
                ),
                widget.TextBox(
                    "",
                    background="#16003e",
                    foreground="#360054",
                    fontsize=24,
                    padding=-2
                ),
                widget.GroupBox(
                    padding=3,
                    fontsize=16,
                    active="#ffac34",
                    inactive="#0ebefe",
                    background="#16003e",
                    this_current_screen_border="#155089",
                ),
                widget.Moc(
                    background="#16003e",
                ),
                widget.TextBox(
                    "",
                    foreground="#16003e",
                    fontsize=24,
                    padding=-2
                ),

                widget.Spacer(),

                widget.TextBox(
                    " ",
                    foreground="#360054",
                    fontsize=24,
                    padding=-10
                ),
                widget.Backlight(
                    fmt=" {}",
                    background="#360054",
                    foreground="#0ebefe",
                    backlight_name="amdgpu_bl0",
                    change_command="brightnessctl set {0}%",
                    brightness_file="/sys/class/backlight/amdgpu_bl0/brightness",
                    max_brightness_file="/sys/class/backlight/amdgpu_bl0/max_brightness",
                ),
                widget.TextBox(
                    "",
                    background="#360054",
                    foreground="#360054",
                    fontsize=24,
                    padding=-10
                ),
                widget.Volume(
                    fmt=" {}",
                    background="#360054",
                    foreground="#0ebefe",
                ),
                widget.TextBox(
                    "",
                    background="#360054",
                    foreground="#360054",
                    fontsize=24,
                    padding=-10
                ),
                widget.Battery(
                    background="#360054",
                    foreground="#0ebefe",
                    low_foreground="#ffac34",
                    format=" {percent:2.0%}",
                ),
                widget.TextBox(
                    "",
                    background="#360054",
                    foreground="#360054",
                    fontsize=24,
                    padding=-10
                ),
                widget.ThermalSensor(
                    background="#360054",
                    foreground="#0ebefe",
                    fmt=" {}",
                ),
                widget.TextBox(
                    "",
                    foreground="#360054",
                    fontsize=24,
                    padding=-2,
                    margin=0
                ),
                widget.Spacer(),
                widget.TextBox(
                    " ",
                    foreground="#16003e",
                    fontsize=24,
                    padding=-10
                ),
                widget.Clipboard(
                    background="#16003e",
                    foreground="#0ebefe",
                ),
                widget.Systray(
                    background="#16003e",
                    foreground="#0ebefe",
                    padding=3,
                ),
                widget.CheckUpdates(
                    background="#16003e",
                    foreground="#0ebefe",
                    colour_have_updates="#0ebefe",
                    restart_indicator="",
                    no_update_string="﫟",
                    display_format="",
                    fontsize=23,
                    padding=4,
                ),
                widget.CurrentLayoutIcon(
                    background="#16003e",
                    foreground="#0ebefe",
                    padding=9,
                ),
                widget.Clock(
                    background="#16003e",
                    foreground="#0ebefe",
                    format='%a %d/%m/%Y  %I:%M %p'
                ),
                widget.TextBox(
                    " ",
                    background="#16003e",
                    foreground="#360054",
                    fontsize=24,
                    padding=-10
                ),
                widget.QuickExit(
                    background="#360054",
                    foreground="#0ebefe",
                    countdown_format="{}",
                    default_text="  ",
                    fontsize=20
                ),
            ],
            24,
            margin=5,
            opacity=1,
            background='#16003e',
        ),
    ),
]
