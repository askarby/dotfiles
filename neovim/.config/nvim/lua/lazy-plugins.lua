-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({ -- NOTE: Plugins can be added with a link (or for a GitHub repo: 'owner/repo' link).
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	require("plugins/ai"),
	require("plugins/catppuccin"),
	require("plugins/cmp"),
	require("plugins/conform"),
	require("plugins/treewalker"),
	require("plugins/gitsigns"),
	require("plugins/indent_line"),
	require("plugins/lspconfig"),
	require("plugins/lsp-saga"),
	require("plugins/markdown"),
	require("plugins/mini"),
	require("plugins/movement"),
	require("plugins/octo"),
	require("plugins/snacks"),
	require("plugins/snipe"),
	require("plugins/smear"),
	require("plugins/todo-comments"),
	require("plugins/treesitter"),
	require("plugins/trouble"),
	require("plugins/which-key"),
	require("plugins/css"),
	require("plugins/tiny-code-action"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
