local M = {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.0",
	dependencies = "nvim-lua/plenary.nvim",
	event = "VeryLazy",
	opts = {
		pickers = {
			buffers = {
				show_all_buffers = true,
				sort_lastused = true,
				theme = "dropdown",
				previewer = false,
				mappings = {
					i = {
						["<c-d>"] = "delete_buffer",
					},
				},
			},
			find_files = {
				theme = "dropdown",
			},
		},
	},
}

return M
