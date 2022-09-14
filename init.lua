local opt = vim.opt
local g = vim.g
local key = vim.api.nvim_set_keymap

opt.mouse = "a"
opt.relativenumber = true
opt.number = true
opt.numberwidth = 4
opt.termguicolors = true
opt.background = 'dark'
opt.syntax = "ON"
opt.shiftwidth = 2
opt.smartcase = true
opt.ignorecase = true
opt.smartindent = true
opt.tabstop = 2
opt.cmdheight = 0
opt.clipboard = 'unnamed'

g.transparent_enabled = true
g.mapleader = " "

key('n', '<leader>e', ':NvimTreeToggle<CR>', {})
key('n', '<leader>f', ':Telescope find_files<CR>', {})
key('n', '<leader>lg', ':LazyGit<CR>', {})
key('n', '<leader>rc', ':source $MYVIMRC<CR>', {})
key('n', '<leader>tt', ':ToggleTerm direction=float<CR>', {})
key('t', '<c-x>', '<cmd>:ToggleTermToggleAll<CR>', {})

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
require('plugins/kommentary')
require('plugins/nvim-autopairs')
require('plugins/null-ls')
require('plugins/prettier')
require('plugins/toggleterm')
