local M = {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = { "nvim-lua/plenary.nvim", "piersolenski/telescope-import.nvim" },
	event = "VeryLazy",
	config = function()
		require("telescope").load_extension("import")
	end,
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
		extensions = {
			import = {
				-- Add imports to the top of the file keeping the cursor in place
				insert_at_top = true,
				-- Support additional languages
				custom_languages = {
					{
						-- The regex pattern for the import statement
						regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
						-- The Vim filetypes
						filetypes = { "typescript", "typescriptreact", "javascript", "react" },
						-- The filetypes that ripgrep supports (find these via `rg --type-list`)
						extensions = { "js", "ts" },
					},
				},
			},
		},
	},
}

return M
