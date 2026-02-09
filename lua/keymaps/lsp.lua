local keymap = vim.keymap.set

-- LSP finder - Find the symbol's definition
keymap("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "LSP finder" })

-- Code action
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })

-- Rename all occurrences
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { desc = "Rename symbol" })

-- Peek definition (use gp to not conflict with gd)
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" })

-- Go to definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition" })

-- Diagnostics
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Line diagnostics" })
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Cursor diagnostics" })
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Buffer diagnostics" })

-- Diagnostic navigation
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous diagnostic" })
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next diagnostic" })
keymap("n", "<leader>dl", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Diagnostic list" })

-- Jump to errors only
keymap("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Previous error" })

keymap("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Next error" })

-- Toggle outline
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "Toggle outline" })

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover documentation" })

-- Call hierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Incoming calls" })
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Outgoing calls" })

-- Floating terminal
keymap({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>", { desc = "Toggle terminal" })
