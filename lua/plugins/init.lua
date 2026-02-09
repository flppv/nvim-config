return {
  { "kyazdani42/nvim-web-devicons", event = "VeryLazy" },
  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    opts = {},
  },
  {
    "stevearc/oil.nvim",
    lazy = false,
    keys = {
      { "m", "<cmd>Oil<cr>", desc = "Open Oil file explorer" },
    },
    opts = {
      default_file_explorer = true,
    },
  },
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
  },
  {
    "pmizio/typescript-tools.nvim",
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  },
  {
    "lukas-reineke/lsp-format.nvim",
    lazy = true,
  },
}
