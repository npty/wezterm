-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Theme settings
config.color_scheme = "ayu"

-- Font settings
config.font = wezterm.font("PragmataProMonoLiga Nerd Font", { weight = "Regular" })
config.font_size = 18

config.colors = {
	cursor_bg = "#eeeeee",
}

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

return config
