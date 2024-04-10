local M = {}

M.colorize_text = function(text, color)
	return "<span foreground='" .. color .. "'>" .. text .. "</span>"
end

return M
