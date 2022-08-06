local wezterm = require "wezterm"
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)

wezterm.on(
  "format-tab-title",
  function(tab, tabs, panes, config, hover, max_width)
    local edge_foreground = "#1b1032"
    local edge_background = "#0b0022"
    local background = "#1b1032"
    local foreground = "#808080"

    local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)

    return {
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = title },
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = SOLID_RIGHT_ARROW },
    }
  end
)


return {
  --Debug
  debug_key_events = true,

  --Fonts
  font = wezterm.font("JetBrains Mono"),
  font_size = 10.0,

  -- Scroll bar
  enable_scroll_bar = false,

  -- Tab Bar 
  enable_tab_bar = true, 
  tab_bar_at_bottom = true,
  show_tab_index_in_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,

  -- Window
  window_decorations = "NONE",

  window_frame = {
    active_titlebar_bg = "rgba(45,43,78,0.8)",
    inactive_titlebar_bg = "rgba(45,43,78,0.8)",
    inactive_titlebar_border_bottom = "#0f0c29",
    active_titlebar_border_bottom = "#0f0c29",

    button_fg = "#302b63",
    button_bg = "#0f0c29",
    button_hover_fg = "#302b63",
    button_hover_bg = "#3b3052",
  },

  window_padding = {
    bottom = 0,
    right = 0,
    left = 0,
    top = 0,
  },

  window_close_confirmation = "AlwaysPrompt",
  window_background_opacity = 0.5,
  window_background_gradient = {
     colors = {
      "#0f0c29",
      "#302b63",
      "#24243e"
    },
     orientation = {
       Radial = {
         cx = 0.75,
         cy = 0.75,
         radius = 1.25,
       }
     },
  },
}
