pcall(require, "luarocks.loader")

local beautiful = require("beautiful")
local gears = require("gears")

require("awful.autofocus")

local awesome_conf_dir = gears.filesystem.get_configuration_dir()

dofile(awesome_conf_dir .. "util/error.lua")

beautiful.init(awesome_conf_dir .. "theme/theme.lua")

dofile(awesome_conf_dir .. "setting/keys.lua")
dofile(awesome_conf_dir .. "setting/rules.lua")
dofile(awesome_conf_dir .. "setting/screen.lua")
dofile(awesome_conf_dir .. "setting/signals.lua")
