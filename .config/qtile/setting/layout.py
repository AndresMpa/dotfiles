from libqtile import layout
from libqtile.config import Match

layouts = [
    layout.Max(),
    layout.Bsp(
        border_focus="#ffffff",
        border_normal="#49474f",
        margin=4,
    ),
    layout.Columns(
        border_focus="#ffffff",
        border_focus_stack='#69676c',
        border_normal="#49474f",
        border_normal_stack="#49474f",
        border_width=2,
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
