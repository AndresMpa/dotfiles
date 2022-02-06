from setting.layout import getLayout, getFloationgLayout
from setting.groups import groupGenerator
from setting.mouse import mouseMapping
from setting.screen import getScreen
from setting.keys import keysMapping
from util.color import getTheme

mod = "mod4"
keys = keysMapping()

# Drag floating layouts.
mouse = mouseMapping()

groups = groupGenerator(keys)

layouts = getLayout()
floating_layout = getFloationgLayout()
screens = getScreen()

dgroups_key_binder = None
dgroups_app_rules = []  # type: List

focus_on_window_activation = "smart"
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False

reconfigure_screens = True
auto_fullscreen = True
auto_minimize = True

wmname = "Qtile"
