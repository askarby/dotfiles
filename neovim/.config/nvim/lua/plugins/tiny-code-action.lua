-- Tiny-code-action.nvim
-- (https://github.com/rachartier/tiny-code-action.nvim)
return {
	{
		"rachartier/tiny-code-action.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "folke/snacks.nvim" },
		},
		event = "LspAttach",
		opts = {
			picker = "snacks",
			backend = "delta",
		},
	},
}
