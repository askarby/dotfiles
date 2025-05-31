return {
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>td",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "[T]oggle [D]iagnostics",
			},
			{
				"<leader>tr",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "[T]oggle LSP Definitions / [R]eferences / ...",
			},
			{
				"<leader>tq",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "[T]oggle [Q]uickfix List",
			},
		},
	},
}
