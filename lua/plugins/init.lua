return {
	{ "kyazdani42/nvim-web-devicons", event = "VeryLazy" },
	{
		"echasnovski/mini.nvim",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("mini.cursorword").setup({ delay = 0 })
			require("mini.pairs").setup()
			require("mini.comment").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		main = "ibl",
	},
	{ "windwp/nvim-ts-autotag", event = "VeryLazy" },
	{
		"folke/neodev.nvim",
		event = "VeryLazy",
		config = function()
			require("neodev").setup()
		end,
	},
	{ "L3MON4D3/LuaSnip", event = "VeryLazy" },
}
