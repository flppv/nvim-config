local key = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Leader/which-key
key("n", "<leader>e", ":Oil<CR>", { desc = "Toggle Oil" })
-- open oil float window

key("n", "<leader>tr", ":TroubleToggle<CR>", { desc = "Toggle Trouble" })
key("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })
key("n", "<leader>z", ":Lazy<CR>", { desc = "Open Lazy" })
key("n", "<leader>x", ":LspInfo<CR>", { desc = "Lsp Info" })

-- Simplification
key("n", "<c-l>", "<c-w>l", opts)
key("n", "<c-h>", "<c-w>h", opts)
key("n", "<c-j>", "<c-w>j", opts)
key("n", "<c-k>", "<c-w>k", opts)
key("n", "<c-s>", ":w<cr>", opts)

key("n", "<C-d>", "<C-d>zz", opts)
key("n", "<C-u>", "<C-u>zz", opts)

-- key("i", "<c-i>", "copilot#Accept('<cr>')", { expr = true, replace_keycodes = false })

vim.keymap.set("i", "<C-i>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<c-;>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
vim.keymap.set("i", "<c-,>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
vim.keymap.set("i", "<c-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true })

-- vim.g.copilot_no_tab_map = true

vim.keymap.set("n", "<leader>nl", function()
	require("noice").cmd("last")
end)

vim.keymap.set("n", "<leader>nh", function()
	require("noice").cmd("history")
end)
