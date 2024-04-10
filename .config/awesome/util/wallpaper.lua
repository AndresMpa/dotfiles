local gears = require("gears")
local beautiful = require("beautiful")

function Set_wallpaper(screen)
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		if type(wallpaper) == "function" then
			wallpaper = wallpaper(screen)
		end
		gears.wallpaper.maximized(wallpaper, screen, true)
	end
end

screen.connect_signal("property::geometry", Set_wallpaper)
