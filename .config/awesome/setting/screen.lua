local awful = require("awful")
local bar = require("bar.bar")

local tags = require("util.variables").tags
require("setting.layouts")
require("util.wallpaper")

awful.screen.connect_for_each_screen(function(s)
	bar(s)
	Set_wallpaper(s)
	awful.tag(tags, s, awful.layout.layouts[1])
end)
