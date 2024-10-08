local M = {
	"echasnovski/mini.nvim",
	event = "VimEnter",
	version = "*",
	config = function()
		require("mini.starter").setup({
			autoopen = true,
			items = {
				{
					name = "Open file",
					action = "Telescope find_files",
					section = "Telescope",
				},
				{
					name = "Recent files",
					action = "Telescope oldfiles",
					section = "Telescope",
				},
				{
					name = "Grep text",
					action = "Telescope live_grep",
					section = "Telescope",
				},
				{
					name = "File Browser",
					action = "Oil",
					section = "Telescope",
					keymap = "fb",
				},
				{
					name = "Update plugins",
					action = "Lazy update",
					section = "Actions",
				},
				{
					name = "Quit",
					action = "qa",
					section = "Actions",
				},
				{
					name = "Enter config directory",
					action = "Oil ~/.config/nvim",
					section = "Actions",
				},
			},
			content_hooks = {
				require("mini.starter").gen_hook.adding_bullet(),
				require("mini.starter").gen_hook.aligning("center", "center"),
			},
			footer = "Write code, create magic",
			header = table.concat({
				"      .---.        .-----------",
				"     /     \\  __  /    ------",
				"    / /     \\(  )/    -----",
				"   //////   ' \\/ `   ---",
				"  //// / // :    : ---",
				" // /   /  /`    '--",
				"//          //..\\\\",
				"       ====UU====UU====",
				"           '//'||\\\\`",
				"             ''``",
			}, "\n"),
		})
		require("mini.cursorword").setup({ delay = 0 })
		-- require("mini.pairs").setup() -- Uncomment if needed
		require("mini.comment").setup()

		local miniclue = require("mini.clue")
		require("mini.clue").setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},
			clues = {
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
			window = {
				delay = 200,
			},
		})
	end,
}

return M
