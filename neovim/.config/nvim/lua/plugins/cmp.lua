return {
	{
		"saghen/blink.cmp",
		build = "cargo build --release", -- for delimiters
		keys = {},
		-- all modules handle lazy loading internally
		lazy = false,
		opts = {
			chartoggle = {
				enabled = true,
			},
			indent = {
				enabled = true,
			},
			tree = {
				enabled = true,
			},
			signature = {
				enabled = true,
			},
		},
		dependencies = { {
			"nvim-tree/nvim-web-devicons",
			opts = {},
		} },
	},
}
