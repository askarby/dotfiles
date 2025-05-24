local function lspkind_config()
	local lspKindConfig = require("lspkind")
	lspKindConfig.init({
		symbol_map = {
			Boolean = "[] Boolean",
			Character = "[] Character",
			Class = "[] Class",
			Color = "[] Color",
			Constant = "[] Constant",
			Constructor = "[] Constructor",
			Enum = "[] Enum",
			EnumMember = "[] EnumMember",
			Event = "[ﳅ] Event",
			Field = "[] Field",
			File = "[] File",
			Folder = "[ﱮ] Folder",
			Function = "[ﬦ] Function",
			Interface = "[] Interface",
			Keyword = "[] Keyword",
			Method = "[] Method",
			Module = "[] Module",
			Number = "[] Number",
			Operator = "[Ψ] Operator",
			Parameter = "[] Parameter",
			Property = "[ﭬ] Property",
			Reference = "[] Reference",
			Snippet = "[] Snippet",
			String = "[] String",
			Struct = "[ﯟ] Struct",
			Text = "[] Text",
			TypeParameter = "[] TypeParameter",
			Unit = "[] Unit",
			Value = "[] Value",
			Variable = "[ﳛ] Variable",
			Copilot = "[] Copilot",
		},
	})
end

local border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }

return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},
	{
		"saghen/blink.cmp",
		build = "cargo build --release", -- for delimiters
		opts = {
			completion = {
				menu = {
					auto_show = true,
					border = border_chars,
					draw = {
						components = {
							kind_icon = {
								text = function(ctx)
									return require("lspkind").symbolic(ctx.kind, {
										mode = "symbol",
										preset = "codicons",
									})
								end,
							},
						},
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 0,
					window = {
						border = border_chars,
					},
				},
				list = { selection = { preselect = false, auto_insert = true } },
			},
			sources = {
				default = { "copilot", "lsp", "snippets" },
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-copilot",
						score_offset = 100,
						async = true,
					},
				},
			},
			signature = {
				enabled = true,
				window = { border = border_chars },
			},
		},
		dependencies = {
			{
				"nvim-tree/nvim-web-devicons",
				opts = {},
			},
			{ "fang2hou/blink-copilot" },
			{ "onsails/lspkind.nvim", config = lspkind_config },
		},
	},
}
