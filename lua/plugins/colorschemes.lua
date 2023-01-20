local M = {
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			style = "deep",
			transparent = true,
			term_colors = true,
			code_style = {
				comments = "italic",
				strings = "italic",
			},
			lualine = {
				transparent = true,
			},
		},
		config = function(_, opts)
			local onedark = require("onedark")
			onedark.setup(opts)
			onedark.load()
		end,
	},
}

return M
