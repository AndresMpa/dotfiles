local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetBrains Mono"),
  font_size = 10.0,

  color_scheme = "_bash (Gogh)",

  -- Scroll bar
  enable_scroll_bar = false,

  -- Tab Bar 
  enable_tab_bar = true, 
  tab_bar_at_bottom = true,
  show_tab_index_in_tab_bar = false, 
  hide_tab_bar_if_only_one_tab = true,

  active_titlebar_bg = "#302b63",
  inactive_titlebar_bg = "#0f0c29",

  tab_bar_style = {
    active_tab_left = wezterm.format({
      {Background={Color="#0b0022"}},
      {Foreground={Color="#2b2042"}},
      {Text=SOLID_LEFT_ARROW},
    }),
    active_tab_right = wezterm.format({
      {Background={Color="#0b0022"}},
      {Foreground={Color="#2b2042"}},
      {Text=SOLID_RIGHT_ARROW},
    }),
    inactive_tab_left = wezterm.format({
      {Background={Color="#0b0022"}},
      {Foreground={Color="#1b1032"}},
      {Text=SOLID_LEFT_ARROW},
    }),
    inactive_tab_right = wezterm.format({
      {Background={Color="#0b0022"}},
      {Foreground={Color="#1b1032"}},
      {Text=SOLID_RIGHT_ARROW},
    }),
  },

  -- Window
  window_padding = {
    bottom = 0,
    right = 0,
    left = 0,
    top = 0,
  },

  window_close_confirmation = "AlwaysPrompt",
  window_background_opacity = 0.8,
  window_background_gradient = {
     colors = {
      "#0f0c29",
      "#302b63",
      "#24243e"
    },
     orientation = {
       Radial={
         cx = 0.75,
         cy = 0.75,
         radius = 1.25,
       }
     },
  }
}
