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

theme = getTheme()

def getLayout():
    return [
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

def getFloationgLayout():
    return layout.Floating(
        border_focus=theme["layout"][0],
        border_normal=theme["layout"][1],
        float_rules=[
            # Run the utility of `xprop` to see the wm class and name of an X client.
            *layout.Floating.default_float_rules,
            Match(wm_class='confirmreset'),  # gitk
            Match(wm_class='makebranch'),  # gitk
            Match(wm_class='maketag'),  # gitk
            Match(wm_class='ssh-askpass'),  # ssh-askpass
            Match(title='branchdialog'),  # gitk
            Match(title='pinentry'),  # GPG key password entry
        ]
    )
