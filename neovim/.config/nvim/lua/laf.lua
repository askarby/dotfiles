return {
	{ -- Catpuccin theme
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,

		init = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{ -- Smooth scrolling
		"karb94/neoscroll.nvim",
		opts = {
			duration_multiplier = 0.25,
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}
