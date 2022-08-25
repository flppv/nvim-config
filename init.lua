local opt = vim.opt

opt.relativenumber = true
opt.number = true
 -- opt.termguicolors = true
vim.g.transparent_enabled = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', {})

require('plugins')
require('plugins/nightfox')
require('plugins/nvim-treesitter')
require('plugins/lualine')
require('plugins/which-key')
require('plugins/telescope')
require('plugins/nvim-tree')
require('plugins/bufferline')
-- require('plugins/nvim-lspconfig')
require('plugins/mason')
