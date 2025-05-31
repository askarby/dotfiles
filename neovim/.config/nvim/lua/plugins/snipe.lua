return {
	{
		"leath-dub/snipe.nvim",
		keys = {
			{
				"<leader>eb",
				function()
					require("snipe").open_buffer_menu()
				end,
				desc = "[E]xplore [B]uffers",
			},
		},
		opts = {},
	},
}
