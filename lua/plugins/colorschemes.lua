local M = {
  {
    "Shatur/neovim-ayu",
    priority = 1000,
    lazy = false,
    config = function()
      require("ayu").setup({
        mirage = true,
      })

      vim.cmd("colorscheme ayu")
      vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
    end,
  },
}

return M
