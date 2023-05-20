-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
local menubar = require("menubar")

RC = {} -- global namespace, on top before require any modules
RC.vars = require("setting.user-variables")

-- {{{ Error handling -- }}}
require("setting.error-handling")

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")
beautiful.wallpaper = RC.vars.wallpaper
-- }}}

modkey = RC.vars.modkey

-- Custom Local Library
local setting = {
	layouts = require("setting.layouts"),
	tags = require("setting.tags"),
	menu = require("setting.menu"),
	rules = require("setting.rules"),
}

-- Custom Local Library: Keys and Mouse Binding
local binding = {
	globalbuttons = require("binding.globalbuttons"),
	clientbuttons = require("binding.clientbuttons"),
	globalkeys = require("binding.globalkeys"),
	bindtotags = require("binding.bindtotags"),
	clientkeys = require("binding.clientkeys"),
}

-- {{{ Layouts
-- Table of layouts to cover with awful.layout.inc, order matters.
-- a variable needed in setting.tags, and statusbar
-- awful.layout.layouts = { ... }
RC.layouts = setting.layouts()
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
-- a variable needed in rules, tasklist, and globalkeys
RC.tags = setting.tags()
-- }}}

-- {{{ Menu
-- Create a laucher widget and a setting menu
RC.settingmenu = awful.menu({ items = setting.menu() }) -- in globalkeys

-- a variable needed in statusbar (helper)
RC.launcher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = RC.settingmenu })

-- Menubar configuration
-- Set the terminal for applications that require it
menubar.utils.terminal = RC.vars.terminal

-- }}}

-- {{{ Mouse and Key bindings
RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)

-- Set root
root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)
-- }}}

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- {{{ Statusbar: Wibar
require("style.statusbar")
-- }}}

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = setting.rules(binding.clientkeys(), binding.clientbuttons())
-- }}}

-- {{{ Signals
require("setting.signals")
-- }}}
