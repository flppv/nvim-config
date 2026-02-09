local M = {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    lightbulb = { enable = false },
    symbol_in_winbar = { enable = false },
    ui = {
      border = "rounded",
    },
  },
}

return M
