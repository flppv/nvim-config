local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

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

-- vim.cmd("colorscheme onedark")

require("lazy").setup("plugins", {
  defaults = {
    lazy = false,
  },
  install = {
    colorscheme = { "onedark" },
    missing = false,
  },
  checker = {
    enabled = true,
  },
  change_detection = {
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
