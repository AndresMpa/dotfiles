local wibox = require("wibox")

local clock = wibox.widget({
	format = " %a %d/%b/%y, %l:%M %P ",
	widget = wibox.widget.textclock,
})

return clock
