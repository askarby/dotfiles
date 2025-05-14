return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
		cmdline = {
			view = "cmdline", -- moves command line to bottom
		},
	},
	on_attach = function()
		vim.keymap.set({ "n", "i", "s" }, "<c-f>", function()
			if not require("noice.lsp").scroll(4) then
				return "<c-f>"
			end
		end, {
			silent = true,
			expr = true,
		})

		vim.keymap.set({ "n", "i", "s" }, "<c-b>", function()
			if not require("noice.lsp").scroll(-4) then
				return "<c-b>"
			end
		end, {
			silent = true,
			expr = true,
		})
	end,
	dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
}
