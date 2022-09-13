require("packer").startup(function(use)
	use { "wbthomason/packer.nvim" }

		-- THEMES
	use { "catppuccin/nvim", as = "catppuccin" }

	-- UI
	use { "nvim-lualine/lualine.nvim" }
	use { "kyazdani42/nvim-tree.lua" }
	use { "kyazdani42/nvim-web-devicons" }
	use { "romgrk/barbar.nvim" }
	use { "folke/which-key.nvim" }
	use { "glepnir/dashboard-nvim" }
	use { "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = "nvim-lua/plenary.nvim" }

	-- CODE
	use { "neovim/nvim-lspconfig" }
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
	use { "b3nj5m1n/kommentary" }
	use { "windwp/nvim-autopairs" }

	-- AUTOCOMPLETION
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/nvim-cmp" }
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use { "saadparwaiz1/cmp_luasnip" }

	-- GIT
	use { "lewis6991/gitsigns.nvim" }
	use { "kdheepak/lazygit.nvim" }
end)
