from libqtile.config import Group
from libqtile.config import Key

from libqtile.command import lazy
from .keys import mod, keys

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
