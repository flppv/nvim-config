local key = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Leader/which-key
key("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
-- key("n", "<leader>n", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
key("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find Files" })
key("n", "<leader>fo", ":Telescope oldfiles<CR>", { desc = "Old Files" })
key("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope Livegrep" })
key("n", "<leader>l", ":LazyGit<CR>", { desc = "Open LazyGit" })
key(
	"n",
	"<leader>r",
	":source $MYVIMRC<CR>:source ~/.config/nvim/lua/plugins/init.lua<CR> :source ~/.config/nvim/lua/keymaps/init.lua<CR>",
	{ desc = "Reload Config" }
)
key("n", "<leader>tt", ":ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
key("n", "<leader>tr", ":TroubleToggle<CR>", { desc = "Toggle Trouble" })
key("t", "<c-x>", "<cmd>:ToggleTermToggleAll<CR>", {})
-- key("n", "<leader>j", ":Prettier<CR>:w<CR>", { desc = "Format with Prettier & Save file" })
key("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })
key("n", "<leader>i", ":PackerInstall<cr>", { desc = "Packer Install" })
key("n", "<leader>s", ":PackerSync<cr>", { desc = "Packer Sync" })

-- Simplification
key("n", "<c-l>", "<c-w>l", opts)
key("n", "<c-h>", "<c-w>h", opts)
key("n", "<c-j>", "<c-w>j", opts)
key("n", "<c-k>", "<c-w>k", opts)
key("n", "<c-s>", ":w<cr>", opts)

-- Hop
key(
	"",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
	{}
)
key(
	"",
	"S",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
	{}
)
key(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
	{}
)
key(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
	{}
)
key("n", "s", ":HopChar2<CR>", {})

-- Barbar
key("n", "<C-[>", "<Cmd>BufferPrevious<CR>", opts)
key("n", "<C-]>", "<Cmd>BufferNext<CR>", opts)

key("n", "<leader>c", "<Cmd>BufferClose<CR>", opts)
key("n", "<leader>p", "<Cmd>BufferPick<CR>", opts)

key("n", "<C-d>", "<C-d>zz", opts)
key("n", "<C-u>", "<C-u>zz", opts)
