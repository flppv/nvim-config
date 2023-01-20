return {
  {"kyazdani42/nvim-web-devicons"},
  {"akinsho/toggleterm.nvim", config = function () require('toggleterm').setup() end},
  {"numToStr/Comment.nvim", config = function () require('Comment').setup() end},
  {"windwp/nvim-autopairs", config = function () require('nvim-autopairs').setup() end},
  {"lukas-reineke/indent-blankline.nvim", config = function () require('indent_blankline').setup() end},
  {"windwp/nvim-ts-autotag"},
  {"folke/neodev.nvim", config = function () require('neodev').setup() end},
  {"folke/trouble.nvim", config = function () require('trouble').setup() end},
  {"kdheepak/lazygit.nvim"},
  {"L3MON4D3/LuaSnip"},
}
