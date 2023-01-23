local M = {
	"folke/trouble.nvim",
	event = "VeryLazy",
	opts = {
		mode = "document_diagnostics",
	},
	config = function()
		require("trouble").setup()
	end,
}

return M
