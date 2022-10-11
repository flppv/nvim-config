local opt = vim.opt
local g = vim.g

opt.mouse = "a"
opt.relativenumber = true
opt.number = true
opt.numberwidth = 3
opt.termguicolors = true
opt.background = "dark"
opt.syntax = "ON"
opt.shiftwidth = 2
opt.smartcase = true
opt.ignorecase = true
opt.smartindent = true
opt.tabstop = 2
opt.expandtab = true
opt.cmdheight = 0
opt.clipboard = "unnamed"
opt.signcolumn = "yes"
opt.cursorline = true
-- opt.colorcolumn = "100"

g.transparent_enabled = true
g.completeopt = "menu,menuone,noselect"

require("plugins")
require("plugins/nord")
require("plugins/nvim-treesitter")
require("plugins/lualine")
require("plugins/which-key")
require("plugins/telescope")
require("plugins/lsp")
require("plugins/nvim-tree")
require("plugins/barbar")
require("plugins/luadev")
require("plugins/nvim-lspconfig")
require("plugins/mason")
require("plugins/dashboard")
require("plugins/cmp")
require("plugins/gitsigns")
require("plugins/kommentary")
require("plugins/nvim-autopairs")
require("plugins/null-ls")
require("plugins/prettier")
require("plugins/toggleterm")
require("plugins/hop")
require("keymaps")

vim.cmd([[colorscheme nord]])
