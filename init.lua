require("plugins")
require("plugins/nvim-treesitter")
require("plugins/lualine")
require("plugins/which-key")
require("plugins/telescope")
require("plugins/lsp")
require("plugins/nvim-tree")
require("plugins/barbar")
require("plugins/neodev")
require("plugins/nvim-lspconfig")
require("plugins/mason")
require("plugins/dashboard")
require("plugins/cmp")
require("plugins/gitsigns")
require("plugins/comment")
require("plugins/nvim-autopairs")
require("plugins/null-ls")
require("plugins/prettier")
require("plugins/toggleterm")
require("plugins/hop")
require("plugins/nord")
require("plugins/onedark")
require("plugins/tokyodark")
require("keymaps")

local g = vim.g

vim.opt.mouse = "a"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.syntax = "ON"
vim.opt.shiftwidth = 2
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.cmdheight = 0
vim.opt.clipboard = "unnamed"
vim.opt.signcolumn = "yes"
-- opt.cursorline = true
-- opt.colorcolumn = "100"

g.transparent_enabled = true
g.completeopt = "menu,menuone,noselect"

vim.cmd("colorscheme onedark")
