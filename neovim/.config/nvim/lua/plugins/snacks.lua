return {
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		lazy = false,
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
						hidden = true,
						exclude = { "lazy-lock.json", "package-lock.json", "yarn.lock", "node_modules" },
					})
				end,
				desc = "[S]earch by [G]rep'ing for files",
			},
			{
				"<leader>st",
				function()
					MiniFiles.close()
					Snacks.picker.lsp_type_definitions({
						layout = "ivy",
						filter = {
							cwd = true,
						},
					})
				end,
				desc = "[S]earch for [T]ypes",
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
				"<leader>sb",
				function()
					MiniFiles.close()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
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
				"<leader>gL",
				function()
					MiniFiles.close()
					Snacks.lazygit.open({})
				end,
				desc = "[L]azy [G]it",
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
			picker = {
				sources = {
					files = { hidden = true },
				},
			},
			lazygit = {},
		},
	},
}
