local wezterm = require "wezterm"
local SOLID_LEFT_ARROW = utf8.char(0xe0b6)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b4)

local colors = {
  background_gradient_1 = "#1a1c25",
  background_gradient_2 = "#071532",
  background_gradient_3 = "#0c0e15",

  tab_edge_background = "#0f111a",
  tab_edge_foreground = "#6484c7",
  tab_background = "#6484c7",
  tab_foreground = "#081633",


  active_titlebar_bg = "#0f111a",
  inactive_titlebar_bg = "#0f111a",
  active_titlebar_border_bottom = "#0f111a",
  inactive_titlebar_border_bottom = "#0f111a",
}

wezterm.on(
  "format-tab-title",
  function(tab, tabs, panes, config, hover, max_width)
    local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)

    return {
      { Background = { Color = colors.tab_edge_background } },
      { Foreground = { Color = colors.tab_edge_foreground } },
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = colors.tab_background } },
      { Foreground = { Color = colors.tab_foreground } },
      { Text = title },
      { Background = { Color = colors.tab_edge_background } },
      { Foreground = { Color = colors.tab_edge_foreground } },
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
  show_tabs_in_tab_bar = true,
  show_tab_index_in_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  show_new_tab_button_in_tab_bar = false,

  -- Window
  window_decorations = "NONE",

  window_frame = {
    button_fg = colors.background,
    button_bg = colors.background,
    button_hover_fg = colors.background,
    button_hover_bg = colors.background,

    active_titlebar_bg = colors.active_titlebar_bg,
    inactive_titlebar_bg = colors.inactive_titlebar_bg,
    active_titlebar_border_bottom = colors.active_titlebar_border_bottom,
    inactive_titlebar_border_bottom = colors.inactive_titlebar_border_bottom,

    border_left_width = '0cell',
    border_right_width = '0cell',
    border_top_height = '0.25cell',
    border_bottom_height = '0cell',
  },

  window_padding = {
    bottom = 0,
    right = 0,
    left = 0,
    top = 0,
  },

  window_close_confirmation = "AlwaysPrompt",
  window_background_opacity = 0.2,
  window_background_gradient = {
    colors = {
      colors.background_gradient_1,
      colors.background_gradient_2,
      colors.background_gradient_3,
    },
    orientation = {
      Linear = { angle = -40.0 }
    },
  },
}
