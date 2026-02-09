local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSUpdate", "TSUpdateSync" },
  opts = {
    ensure_installed = {
      "css",
      "javascript",
      "html",
      "typescript",
      "tsx",
      "markdown",
      "markdown_inline",
      "regex",
      "bash",
      "lua",
      "json",
      "yaml",
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
    sync_install = false,
    ignore_install = {},
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

return M
