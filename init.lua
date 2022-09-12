local opt = vim.opt
local g = vim.g

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
opt.cmdheight = 0

g.transparent_enabled = true
g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>lg', ':LazyGit<CR>', {})

require('plugins')
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
