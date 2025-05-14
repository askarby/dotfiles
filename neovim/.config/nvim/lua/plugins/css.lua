return {
	-- Add colors to CSS colors
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = { -- set to setup table
		},
		config = function()
			-- Use default for all filetypes with overrides for css and html
			require("colorizer").setup({
				filetypes = {
					"*", -- Highlight all files, but customize some others.
					css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
					html = { names = false }, -- Disable parsing "names" like Blue or Gray
				},
			})
		end,
	},
}
