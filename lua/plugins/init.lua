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
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		event = "VeryLazy",
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
