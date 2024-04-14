local home = os.getenv("HOME")
local wallpaper_dir = home .. "/Wallpapers/current/"
local handle = io.popen("ls " .. wallpaper_dir)

local current_wallpaper = handle:read("*a")
handle:close()

local _M = {
	modkey = "Mod4",
	terminal = "wezterm",
	wallpaper = wallpaper_dir .. current_wallpaper,
	tags = { "", "﨩", "", "", "", "", "", "", "" },
}

return _M
