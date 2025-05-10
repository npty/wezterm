-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Theme settings
config.color_scheme = "ayu"

-- Fonts Settings
config.font = wezterm.font("PragmataProMonoLiga Nerd Font", { weight = "Regular" })
config.font_size = 16

-- Mouse and Miscellaneous
config.audible_bell = "Disabled"
config.disable_default_mouse_bindings = false

-- Plugins
wezterm.plugin
	.require("https://github.com/yriveiro/wezterm-tabs")
	.apply_to_config(config, { tabs = { tab_bar_at_bottom = false } })

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
	cursor_bg = "#eeeeee",
}

return config
