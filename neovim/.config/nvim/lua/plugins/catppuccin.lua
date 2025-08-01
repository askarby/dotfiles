return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		term_colors = true,
		transparent_background = true,
		dim_inactive = {
			enabled = false, -- dims the background color of inactive window
			shade = "dark",
			percentage = 0.15, -- percentage of the shade to apply to the inactive window
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			treesitter = true,
			harpoon = true,
			mason = true,
			noice = true,
			notify = true,
			which_key = true,
			fidget = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			mini = {
				enabled = true,
				indentscope_color = "",
			},
		},
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin-macchiato")

		-- Ensure that "not current line"-line number is easier to see!
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "gray", bold = false })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "gray", bold = false })
	end,
}
