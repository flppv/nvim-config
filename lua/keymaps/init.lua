local key = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Leader/which-key
key("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
key("n", "<leader>tr", ":TroubleToggle<CR>", { desc = "Toggle Trouble" })
-- key("n", "<leader>j", ":Prettier<CR>:w<CR>", { desc = "Format with Prettier & Save file" })
key("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })
key("n", "<leader>s", '<cmd>lua require("persistence").load()<CR>', { desc = "Load Last Session" })
key("n", "<leader>z", ":Lazy<CR>", { desc = "Open Lazy" })

-- Simplification
key("n", "<c-l>", "<c-w>l", opts)
key("n", "<c-h>", "<c-w>h", opts)
key("n", "<c-j>", "<c-w>j", opts)
key("n", "<c-k>", "<c-w>k", opts)
key("n", "<c-s>", ":w<cr>", opts)

key("n", "<C-d>", "<C-d>zz", opts)
key("n", "<C-u>", "<C-u>zz", opts)
