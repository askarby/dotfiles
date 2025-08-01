return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "codecompanion" },
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		priority = 49,
		opts = {
			preview = {
				filetypes = { "markdown", "codecompanion" },
				ignore_buftypes = {},
				icon_provider = "mini",
			},
		},
	},
}
