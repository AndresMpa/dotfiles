-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")

local modkey = require("util.variables").modkey
local terminal = require("util.variables").terminal

local globalkeys = gears.table.join(
	awful.key({}, "XF86MonBrightnessDown", function()
		awful.util.spawn("brightnessctl -d amdgpu_bl1 s 10-", false)
	end),
	awful.key({}, "XF86MonBrightnessUp", function()
		awful.util.spawn("brightnessctl -d amdgpu_bl1 s 10+", false)
	end),
	awful.key({}, "F4", function()
		awful.util.spawn(
			"xrandr --auto --output $(xrandr | grep HDMI | cut -d ' ' -f 1) --mode $(xrandr | grep '*+' | awk '/[0-9]/ {print $1}' | cut -d ' ' -f 1 | awk -F, 'NR==1{print $1}') &&	feh --bg-scale $(find ~/Wallpapers/current -type f | shuf -n 1) &&	bash $(find ~/.config/polybar/*sh -type f | shuf -n 1);",
			false
		)
	end),
	awful.key({}, "F5", function()
		awful.util.spawn("mons -n right", false)
	end),
	awful.key({}, "XF86AudioRaiseVolume", function()
		awful.util.spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+", false)
	end),
	awful.key({}, "XF86AudioLowerVolume", function()
		awful.util.spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-", false)
	end),
	awful.key({}, "XF86AudioMute", function()
		awful.util.spawn("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle", false)
	end),
	awful.key({}, "XF86AudioPrev", function()
		awful.util.spawn("playerctl previous", false)
	end),
	awful.key({}, "XF86AudioPlay", function()
		awful.util.spawn("playerctl play-pause", false)
	end),
	awful.key({}, "XF86AudioNext", function()
		awful.util.spawn("playerctl next", false)
	end),
	awful.key({}, "F12", function()
		awful.util.spawn("xrandr --output $(xrandr | grep HDMI | cut -d ' ' -f 1) --off", false)
	end),
	awful.key({}, "Print", function()
		awful.util.spawn("flameshot", false)
	end),

	awful.key({ modkey }, "d", function()
		awful.util.spawn("rofi -show drun", false)
	end),

	awful.key({ modkey }, "s", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),

	--   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	-- Tag browsing
	awful.key({ modkey }, "Left", awful.tag.viewprev, { description = "view previous", group = "tag" }),
	awful.key({ modkey }, "Right", awful.tag.viewnext, { description = "view next", group = "tag" }),
	awful.key({ modkey }, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),

	awful.key({ modkey }, "j", function()
		awful.client.focus.byidx(1)
	end, { description = "focus next by index", group = "client" }),
	awful.key({ modkey }, "k", function()
		awful.client.focus.byidx(-1)
	end, { description = "focus previous by index", group = "client" }),

	--   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	-- Layout manipulation
	awful.key({ modkey, "Shift" }, "j", function()
		awful.client.swap.byidx(1)
	end, { description = "swap with next client by index", group = "client" }),
	awful.key({ modkey, "Shift" }, "k", function()
		awful.client.swap.byidx(-1)
	end, { description = "swap with previous client by index", group = "client" }),
	awful.key({ modkey, "Control" }, "j", function()
		awful.screen.focus_relative(1)
	end, { description = "focus the next screen", group = "screen" }),
	awful.key({ modkey, "Control" }, "k", function()
		awful.screen.focus_relative(-1)
	end, { description = "focus the previous screen", group = "screen" }),
	awful.key({ modkey }, "u", awful.client.urgent.jumpto, { description = "jump to urgent client", group = "client" }),
	awful.key({ modkey }, "Tab", function()
		awful.client.focus.history.previous()
		if client.focus then
			client.focus:raise()
		end
	end, { description = "go back", group = "client" }),

	--   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	-- Standard program
	awful.key({ modkey }, "Return", function()
		awful.spawn(terminal)
	end, { description = "open a terminal", group = "launcher" }),
	awful.key({ modkey, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
	awful.key({ modkey, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),

	--   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	-- Layout manipulation
	awful.key({ modkey }, "l", function()
		awful.tag.incmwfact(0.05)
	end, { description = "increase master width factor", group = "layout" }),
	awful.key({ modkey }, "h", function()
		awful.tag.incmwfact(-0.05)
	end, { description = "decrease master width factor", group = "layout" }),
	awful.key({ modkey, "Shift" }, "h", function()
		awful.tag.incnmaster(1, nil, true)
	end, { description = "increase the number of master clients", group = "layout" }),
	awful.key({ modkey, "Shift" }, "l", function()
		awful.tag.incnmaster(-1, nil, true)
	end, { description = "decrease the number of master clients", group = "layout" }),
	awful.key({ modkey, "Control" }, "h", function()
		awful.tag.incncol(1, nil, true)
	end, { description = "increase the number of columns", group = "layout" }),
	awful.key({ modkey, "Control" }, "l", function()
		awful.tag.incncol(-1, nil, true)
	end, { description = "decrease the number of columns", group = "layout" }),
	awful.key({ modkey }, "space", function()
		awful.layout.inc(1)
	end, { description = "select next", group = "layout" }),
	awful.key({ modkey, "Shift" }, "space", function()
		awful.layout.inc(-1)
	end, { description = "select previous", group = "layout" }),

	awful.key({ modkey, "Control" }, "n", function()
		local c = awful.client.restore()
		if c then
			c:emit_signal("request::activate", "key.unminimize", { raise = true })
		end
	end, { description = "restore minimized", group = "client" }),

	--   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	-- Resize
	awful.key({ modkey, "Control" }, "Down", function()
		awful.client.moveresize(0, 0, 0, -20)
	end),
	awful.key({ modkey, "Control" }, "Up", function()
		awful.client.moveresize(0, 0, 0, 20)
	end),
	awful.key({ modkey, "Control" }, "Left", function()
		awful.client.moveresize(0, 0, -20, 0)
	end),
	awful.key({ modkey, "Control" }, "Right", function()
		awful.client.moveresize(0, 0, 20, 0)
	end),

	-- Move
	awful.key({ modkey, "Shift" }, "Down", function()
		awful.client.moveresize(0, 20, 0, 0)
	end),
	awful.key({ modkey, "Shift" }, "Up", function()
		awful.client.moveresize(0, -20, 0, 0)
	end),
	awful.key({ modkey, "Shift" }, "Left", function()
		awful.client.moveresize(-20, 0, 0, 0)
	end),
	awful.key({ modkey, "Shift" }, "Right", function()
		awful.client.moveresize(20, 0, 0, 0)
	end)
)

ClientKeys = gears.table.join(
	awful.key({ modkey }, "f", function(c)
		c.fullscreen = not c.fullscreen
		c:raise()
	end, { description = "toggle fullscreen", group = "client" }),
	awful.key({ modkey }, "w", function(c)
		c:kill()
	end, { description = "close", group = "client" }),
	awful.key(
		{ modkey, "Control" },
		"space",
		awful.client.floating.toggle,
		{ description = "toggle floating", group = "client" }
	),
	awful.key({ modkey, "Control" }, "Return", function(c)
		c:swap(awful.client.getmaster())
	end, { description = "move to master", group = "client" }),
	awful.key({ modkey }, "o", function(c)
		c:move_to_screen()
	end, { description = "move to screen", group = "client" }),
	awful.key({ modkey }, "t", function(c)
		c.ontop = not c.ontop
	end, { description = "toggle keep on top", group = "client" }),
	awful.key({ modkey }, "n", function(c)
		c.minimized = true
	end, { description = "minimize", group = "client" }),
	awful.key({ modkey }, "m", function(c)
		c.maximized = not c.maximized
		c:raise()
	end, { description = "(un)maximize", group = "client" }),
	awful.key({ modkey, "Control" }, "m", function(c)
		c.maximized_vertical = not c.maximized_vertical
		c:raise()
	end, { description = "(un)maximize vertically", group = "client" }),
	awful.key({ modkey, "Shift" }, "m", function(c)
		c.maximized_horizontal = not c.maximized_horizontal
		c:raise()
	end, { description = "(un)maximize horizontally", group = "client" })
)

for i = 1, 9 do
	globalkeys = gears.table.join(
		globalkeys,

		--  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
		-- View tag only.
		awful.key({ modkey }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				tag:view_only()
			end
		end, { description = "view tag #" .. i, group = "tag" }),

		--  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
		-- Toggle tag display.
		awful.key({ modkey, "Control" }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end, { description = "toggle tag #" .. i, group = "tag" }),

		--  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
		-- Move client to tag.
		awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end, { description = "move focused client to tag #" .. i, group = "tag" }),

		--  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
		-- Toggle tag on focused client.
		awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:toggle_tag(tag)
				end
			end
		end, { description = "toggle focused client on tag #" .. i, group = "tag" })

		--  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	)
end

-- Mouse bindings. You shouldn't need to change these.
ClientButtons = gears.table.join(
	awful.button({}, 1, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
	end),
	awful.button({ ModKey }, 1, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
		awful.mouse.client.move(c)
	end),
	awful.button({ ModKey }, 3, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
		awful.mouse.client.resize(c)
	end)
)

-- Set keys. Without this line all of this file is useless!
root.keys(globalkeys)
