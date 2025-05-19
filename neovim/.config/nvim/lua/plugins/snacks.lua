return {
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		keys = {
			{
				"<leader>sr",
				function()
					MiniFiles.close()
					Snacks.picker.recent({
						layout = "ivy",
						filter = {
							cwd = true,
						},
					})
				end,
				desc = "[S]earch for [R]ecent files",
			},
			{
				"<leader>sg",
				function()
					MiniFiles.close()
					Snacks.picker.grep({
						layout = "ivy",
						filter = {
							cwd = true,
						},
					})
				end,
				desc = "[S]earch by [G]rep'ing for files",
			},
			{
				"<leader>ss",
				function()
					MiniFiles.close()
					Snacks.picker.smart({
						layout = "ivy",
						filter = {
							cwd = true,
						},
					})
				end,
				desc = "[S]earch via [S]mart selecting files",
			},
			{
				"<leader>gl",
				function()
					MiniFiles.close()
					Snacks.picker.git_log({
						finder = "git_log",
						format = "git_log",
						preview = "git_show",
						confirm = "git_checkout",
						layout = "ivy",
					})
				end,
				desc = "[G]it [L]og",
			},
			{
				"<leader>sc",
				function()
					Snacks.picker.files({
						cwd = vim.fn.stdpath("config"),
					})
				end,
				desc = "[S]earch [C]onfig File",
			},
		},
		opts = {
			picker = {},
		},
	},
}
