local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	config = function()
		-- vim.opt.foldmethod     = 'expr'
		-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
		---WORKAROUND
		vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
			group = vim.api.nvim_create_augroup("TS_FOLD_WORKAROUND", {}),
			callback = function()
				vim.opt.foldmethod = "manual"
				-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
			end,
		})
		---ENDWORKAROUND

		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"css",
				"javascript",
				"html",
				"typescript",
				"markdown",
				"regex",
				"bash",
				"markdown_inline",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},

			modules = {},
			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- List of parsers to ignore installing (or "all")
			ignore_install = {},
		})
	end,
}
return M
