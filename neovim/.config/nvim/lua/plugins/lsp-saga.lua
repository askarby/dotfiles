return {
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})

			vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>")
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
			"onsails/lspkind.nvim",
		},
	},
}
