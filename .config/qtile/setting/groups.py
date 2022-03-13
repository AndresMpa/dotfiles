# Qtile dependencies

from libqtile.config import Group, Key
from libqtile.config import Key
from libqtile.lazy import lazy

mod = "mod4"

#  "", "", "", "", "ﴬ", "力"
def groupGenerator(keys):
    groups = [Group(item) for item in [
        "", "", "切", ""
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

    return groups
