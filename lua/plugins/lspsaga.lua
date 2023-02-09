local M = {
	"glepnir/lspsaga.nvim",
	event = "BufRead",
	config = function()
		require("lspsaga").setup({
			symbol_in_winbar = {
				enable = false,
			},
		})
	end,
}

return M
