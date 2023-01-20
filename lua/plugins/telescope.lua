local M = {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.0",
	dependencies = "nvim-lua/plenary.nvim",
	event = "VeryLazy",
	opts = {
		pickers = {
			find_files = {
				theme = "dropdown",
			},
		},
	},
}

return M
