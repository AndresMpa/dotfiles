local home = os.getenv("HOME")
local wallpaper_dir = home .. "/Wallpapers/current/"
local handle = io.popen("ls " .. wallpaper_dir)

if handle == nil or handle == "" then
	error("Error on wallpaper")
end

local current_wallpaper = handle:read("*a")
handle:close()

local _M = {
	modkey = "Mod4",
	terminal = "wezterm",
	wallpaper = "~/Wallpapers/current/" .. current_wallpaper,
	tags = { "", "﨩", "", "", "", "", "", "", "" },
}

return _M
