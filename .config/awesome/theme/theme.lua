local theme = {}

local background = require("util.variables").wallpaper

theme.background = "#"
theme.foreground = "#bbc2cf"

theme.color0 = "#0c0e15"
theme.color1 = "#081633" --status
theme.color2 = "#008080" --added
theme.color3 = "#98be65" --branch
theme.color4 = "#6483c5" --normal
theme.color5 = "#a9a1e1" --modified
theme.color6 = "#c678dd" --filename

theme.attention = "#a34d53" --replace
theme.warning = "#ECBE7B" --warning
theme.error = "#c05a60" --error

-- tasklist

theme.tasklist_bg_focus = theme.foreground
theme.tasklist_bg_normal = theme.background

-- tasklist

-- Defaults

theme.bar_bg = theme.color0
theme.bar_fg = theme.color1

theme.border_width = 1
theme.border_focus = theme.color4
theme.border_normal = theme.color5
theme.border_marked = theme.attention

theme.bg_focus = theme.background
theme.bg_normal = theme.background
theme.bg_urgent = theme.background
theme.bg_systray = theme.background
theme.bg_minimize = theme.background

theme.fg_focus = theme.foreground
theme.fg_normal = theme.foreground
theme.fg_urgent = theme.foreground
theme.fg_systray = theme.foreground
theme.fg_minimize = theme.foreground

-- Defaults

-- taglist

theme.taglist_bg_focus = theme.background
theme.taglist_bg_empty = theme.background
theme.taglist_bg_occupied = theme.background
theme.taglist_bg_urgent = theme.foreground
theme.taglist_bg_volatile = theme.foreground

theme.taglist_fg_focus = theme.color6
theme.taglist_fg_empty = theme.color5
theme.taglist_fg_occupied = theme.color3
theme.taglist_fg_urgent = theme.attention
theme.taglist_bg_volatile = theme.attention

-- taglist

-- notitication

theme.notification_border_color = theme.color0
theme.notification_border_width = 1
theme.notification_max_height = 100
theme.notification_max_width = 500
theme.notification_icon_size = 100

-- notitication

theme.wallpaper = background
theme.lockwall = background

theme.useless_gap = 5
theme.gap_single_client = true

theme.font = "Iosevka Nerd Font 8"
theme.bar_height = 18

return theme
