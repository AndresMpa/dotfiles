from libqtile import hook

from setting.keys import mod, keys
from setting.groups import groups
from setting.layout import layouts
from setting.mouse import mouse
from setting.screen import screens, widget_defaults, extension_defaults

main = None
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
