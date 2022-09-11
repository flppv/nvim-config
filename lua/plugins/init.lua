require('packer').startup(function(use)
	use {
		'EdenEast/nightfox.nvim'
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}
	use { "catppuccin/nvim", as = "catppuccin" }
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {'folke/which-key.nvim'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim'}
	use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
	use {'neovim/nvim-lspconfig'}
	use { "williamboman/mason.nvim" }
	use {"williamboman/mason-lspconfig.nvim"}
	use {'glepnir/dashboard-nvim'}

  use { 'hrsh7th/cmp-nvim-lsp'}
  use { 'hrsh7th/cmp-buffer'}
  use { 'hrsh7th/cmp-path'}
  use { 'hrsh7th/cmp-cmdline'}
  use { 'hrsh7th/nvim-cmp'}
	use { 'lewis6991/gitsigns.nvim'}
	use {'kdheepak/lazygit.nvim'}
end)
