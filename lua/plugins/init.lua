require("packer").startup(function(use)
  use({ "wbthomason/packer.nvim" })

  -- THEMES
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({ "tiagovla/tokyodark.nvim" })
  use({ "shaunsingh/nord.nvim" })
  use({ "navarasu/onedark.nvim" })

  -- UI
  use({ "nvim-lualine/lualine.nvim" })
  use({ "kyazdani42/nvim-tree.lua" })
  use({ "kyazdani42/nvim-web-devicons" })
  use({ "romgrk/barbar.nvim" })
  use({ "folke/which-key.nvim" })
  use({ "glepnir/dashboard-nvim" })
  use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = "nvim-lua/plenary.nvim" })
  use({ "akinsho/toggleterm.nvim" })
  use({ "phaazon/hop.nvim", branch = "v2" })
  -- use { "junegunn/limelight.vim" }

  -- CODE
  use({ "neovim/nvim-lspconfig" })
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "numToStr/Comment.nvim" })
  use({ "windwp/nvim-autopairs" })
  use({ "jose-elias-alvarez/null-ls.nvim" })
  use({ "MunifTanjim/prettier.nvim" })
  use({ "lukas-reineke/indent-blankline.nvim" })
  use({ "windwp/nvim-ts-autotag" })
  use({ "folke/neodev.nvim" })
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  })

  -- AUTOCOMPLETION
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  use({ "hrsh7th/cmp-cmdline" })
  use({ "hrsh7th/nvim-cmp" })
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
  use({ "saadparwaiz1/cmp_luasnip" })

  -- GIT
  use({ "lewis6991/gitsigns.nvim" })
  use({ "kdheepak/lazygit.nvim" })
end)
