return {
	{
		"ravitemer/mcphub.nvim",
		config = function()
			require("mcphub").setup()
		end,
		build = "bundled_build.lua",
	},
	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"ravitemer/mcphub.nvim",
		},
		config = function()
			require("codecompanion").setup({
				display = {
					action_palette = {
						width = 95,
						height = 10,
						prompt = "Prompt ", -- Prompt used for interactive LLM calls
						provider = "snacks", -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
						opts = {
							show_default_actions = true, -- Show the default actions in the action palette?
							show_default_prompt_library = true, -- Show the default prompt library in the action palette?
						},
					},
				},
				extensions = {
					mcphub = {
						callback = "mcphub.extensions.codecompanion",
						opts = {
							show_result_in_chat = true, -- Show MCP tool results in chat
							make_vars = true, -- Convert resources to #variables
							make_slash_commands = true, -- Add prompts as /slash commands
						},
					},
				},
			})

			vim.keymap.set(
				{ "n", "v" },
				"<leader>cca",
				"<cmd>CodeCompanionActions<CR>",
				{ desc = "[C]ode [C]ompanion [A]ction" }
			)
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
