local M = {
	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	opts = {
	-- 		style = "deep",
	-- 		transparent = true,
	-- 		term_colors = true,
	-- 		code_style = {
	-- 			comments = "italic",
	-- 			strings = "italic",
	-- 		},
	-- 		lualine = {
	-- 			transparent = true,
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		local onedark = require("onedark")
	-- 		onedark.setup(opts)
	-- 		onedark.load()
	-- 	end,
	-- },
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		lazy = false,
		config = function()
			require("ayu").setup({
				mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
			})

			vim.cmd("colorscheme ayu")
			vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
		end,
	},
}

return M
