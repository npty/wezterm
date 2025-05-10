-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "ayu"

config.font = wezterm.font("PragmataProMonoLiga Nerd Font")
config.font_size = 16
config.audible_bell = "Disabled"
config.disable_default_mouse_bindings = false

--
wezterm.plugin
	.require("https://github.com/yriveiro/wezterm-tabs")
	.apply_to_config(config, { tabs = { tab_bar_at_bottom = false } })

return config
