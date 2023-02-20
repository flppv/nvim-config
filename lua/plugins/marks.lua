local M = {
	"chentoast/marks.nvim",
	event = "VeryLazy",
	config = function()
		require("marks").setup({
			cyclic = true,
		})
	end,
}

return M
