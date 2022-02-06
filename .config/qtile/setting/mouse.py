from libqtile.config import Click, Drag
from libqtile.lazy import lazy

mod = "mod4"

def mouseMapping():
    return [
        Drag(
            [mod],
            "Button1",
            lazy.window.set_position_floating(),
            start=lazy.window.get_position()
        ),
        Drag(
            [mod, "shift"],
            "Button1",
            lazy.window.set_size_floating(),
            start=lazy.window.get_size()
        ),
        Click(
            [mod, "control"],
            "Button1",
            lazy.window.bring_to_front()
        )
    ]
