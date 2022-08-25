require('packer').startup(function()
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
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
	use {'folke/which-key.nvim'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim'}	
	use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
	use {'neovim/nvim-lspconfig'}
	use { "williamboman/mason.nvim" }
	use {"williamboman/mason-lspconfig.nvim"}
end)
