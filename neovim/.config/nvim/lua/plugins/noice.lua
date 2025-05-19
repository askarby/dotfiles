return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
		cmdline = {
			view = "cmdline", -- moves command line to bottom
		},
	},
	config = function()
		vim.api.nvim_create_autocmd("RecordingEnter", {
			callback = function()
				local msg = string.format("Register:  %s", vim.fn.reg_recording())
				_MACRO_RECORDING_STATUS = true
				vim.notify(msg, vim.log.levels.INFO, {
					title = "Macro Recording",
					keep = function() return _MACRO_RECORDING_STATUS end,
				})
			end,
			group = vim.api.nvim_create_augroup("NoiceMacroNotfication", {clear = true})
		})

		vim.api.nvim_create_autocmd("RecordingLeave", {
			callback = function()
				_MACRO_RECORDING_STATUS = false
				vim.notify("Success!", vim.log.levels.INFO, {
					title = "Macro Recording End",
					timeout = 2000,
				})
			end,
			group = vim.api.nvim_create_augroup("NoiceMacroNotficationDismiss", {clear = true})
		})
	end,
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
