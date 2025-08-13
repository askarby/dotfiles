return {
	"Owen-Dechow/videre.nvim",
	cmd = "Videre",
	dependencies = {
		"Owen-Dechow/graph_view_yaml_parser", -- Optional: add YAML support
		"Owen-Dechow/graph_view_toml_parser", -- Optional: add TOML support
		"a-usr/xml2lua.nvim", -- Optional | Experimental: add XML support
	},
	opts = {
		round_units = false,
		simple_statusline = false,
		editor_type = "floating",
	},
	keys = {
		{
			"<leader>es",
			"<cmd>Videre<cr>",
			mode = { "n", "v" },
			desc = "[E]xplore [S]tructure",
		},
	},
}
