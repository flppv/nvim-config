local M = {
	"glepnir/lspsaga.nvim",
	event = "BufRead",
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				enable = false,
			},
			symbol_in_winbar = {
				enable = false,
			},
		})
	end,
}

return M
