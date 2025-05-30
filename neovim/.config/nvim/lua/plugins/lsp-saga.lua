return {
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})

			vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
			vim.keymap.set(
				"n",
				"<leader>ci",
				"<cmd>Lspsaga incoming_calls<CR>",
				{ desc = "[C]ode Show [I]ncoming calls" }
			)
			vim.keymap.set(
				"n",
				"<leader>co",
				"<cmd>Lspsaga outgoing_calls<CR>",
				{ desc = "[C]ode Show [O]utgoing calls" }
			)
			vim.keymap.set("n", "<leader>to", "<cmd>Lspsaga outline<CR>", { desc = "[T]oggle [O]utline" })
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
			"onsails/lspkind.nvim",
		},
	},
}
