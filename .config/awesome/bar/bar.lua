local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local clock = require("bar.widgets.clock")
local layout = require("bar.widgets.layout")
local systray = require("bar.widgets.systray")
local taglist = require("bar.widgets.taglist")
local tasklist = require("bar.widgets.tasklist")

local bar = function(screen)
	local wb = awful.wibar({
		position = "top",
		height = beautiful.bar_height,
		screen = screen,
		bg = beautiful.background,
	})
	wb:setup({
		{
			{
				layout = wibox.layout.align.horizontal,
				{
					layout = wibox.layout.align.horizontal,
					taglist(screen),
				},
				nil,
				{
					layout = wibox.layout.align.horizontal,
					{
						layout = wibox.layout.align.horizontal,
						systray,
						clock,
						layout(screen),
					},
				},
			},
			widget = wibox.container.margin,
			right = 5,
			left = 5,
		},
		{
			layout = wibox.container.place,
			halign = "center",
			tasklist(screen),
		},
		layout = wibox.layout.stack,
	})
end

return bar
