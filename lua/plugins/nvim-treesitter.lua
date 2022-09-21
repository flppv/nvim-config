require('nvim-treesitter').setup()

-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'manual'
    -- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
---ENDWORKAROUND


require('nvim-treesitter.configs').setup({ 	
	ensure_installed = {"css", "javascript", "html", "svelte", "typescript"},
	auto_install = true,
	highlight = {
		enable = true,
	},
		autotag = {
		enable = true
	}
})
