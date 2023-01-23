return {
	{ "kyazdani42/nvim-web-devicons", event = "VeryLazy" },
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		config = function()
			require("toggleterm").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "VeryLazy",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		config = function()
			require("indent_blankline").setup()
		end,
	},
	{ "windwp/nvim-ts-autotag", event = "VeryLazy" },
	{
		"folke/neodev.nvim",
		event = "VeryLazy",
		config = function()
			require("neodev").setup()
		end,
	},
	{ "kdheepak/lazygit.nvim", event = "VeryLazy" },

	{ "L3MON4D3/LuaSnip", event = "VeryLazy" },
}
