return {
  {"kyazdani42/nvim-web-devicons"},
  {"folke/which-key.nvim"},
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
        pickers = {
            find_files = {
                theme = "dropdown"
            }
        }
    }
  },
  {"akinsho/toggleterm.nvim"},
  {
    "phaazon/hop.nvim",
    branch = "v2",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    }
  },
  {"numToStr/Comment.nvim"},
  {"windwp/nvim-autopairs"},
  {"lukas-reineke/indent-blankline.nvim"},
  {"windwp/nvim-ts-autotag"},
  {"folke/neodev.nvim"},
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons"
  },
  {"kdheepak/lazygit.nvim"},
  {
    "L3MON4D3/LuaSnip",
  },
}
