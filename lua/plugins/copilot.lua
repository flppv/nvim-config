local M = {
	"zbirenbaum/copilot.lua",
	event = "VeryLazy",
	config = function()
		vim.defer_fn(function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<C-i>",
					},
				},
				panel = { enabled = true },
				filetypes = {
					lua = true,
					javascript = true,
					typescript = true,
				},
			})
		end, 100)
	end,
}

return M
