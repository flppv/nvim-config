return {
  { "kyazdani42/nvim-web-devicons", event = "VeryLazy" },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/neodev.nvim",
    event = "VeryLazy",
    config = function()
      require("neodev").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    event = "VeryLazy",
    config = function()
      require("oil").setup({})
      vim.keymap.set("n", "<leader>q", require("oil").open_float, { noremap = true, silent = true })
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  },
  {
    "lukas-reineke/lsp-format.nvim",
  },
}
