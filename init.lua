local opt = vim.opt

opt.mouse = "a"
opt.relativenumber = true
opt.number = true
opt.termguicolors = true
opt.background = 'dark'
opt.syntax = "ON"
opt.shiftwidth = 4
opt.smartcase = true
opt.ignorecase = true
opt.smartindent = true
opt.tabstop = 2
vim.g.transparent_enabled = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', {})

require('plugins')
require('plugins/nightfox')
require('plugins/catppuccin')
require('plugins/nvim-treesitter')
require('plugins/lualine')
require('plugins/which-key')
require('plugins/telescope')
require('plugins/lsp')
require('plugins/nvim-tree')
require('plugins/barbar')
require('plugins/nvim-lspconfig')
require('plugins/mason')
require('plugins/dashboard')
require('plugins/cmp')
require('plugins/gitsigns')
