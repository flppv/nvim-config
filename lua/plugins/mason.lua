local M = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  build = ":MasonUpdate",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = { "cssls", "html", "lua_ls" },
      automatic_installation = true,
    })
  end,
}

return M
