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
}
