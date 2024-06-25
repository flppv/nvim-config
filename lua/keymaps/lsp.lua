local keymap = vim.keymap.set

-- LSP finder - Find the symbol's definition
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { desc = "LSP finder - Find the symbol's definition" })

-- Code action
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })

-- Rename all occurrences of the hovered word for the entire file
keymap(
  "n",
  "gr",
  "<cmd>Lspsaga rename<CR>",
  { desc = "Rename all occurrences of the hovered word for the entire file" }
)

-- Rename all occurrences of the hovered word for the selected files
keymap(
  "n",
  "gr",
  "<cmd>Lspsaga rename ++project<CR>",
  { desc = "Rename all occurrences of the hovered word for the selected files" }
)

-- Peek definition
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" })

-- Go to definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition" })

-- Show line diagnostics
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Show line diagnostics" })

-- Show cursor diagnostics
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Show cursor diagnostics" })

-- Show buffer diagnostics
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Show buffer diagnostics" })

-- Diagnostic jump
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Diagnostic jump" })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Diagnostic jump" })

-- Diagnostic jump with filters such as only jumping to an error
keymap("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump with filters such as only jumping to an error" })

keymap("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump with filters such as only jumping to an error" })

-- Toggle outline
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "Toggle outline" })

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Doc" })

-- Call hierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Call hierarchy - Incoming calls" })
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Call hierarchy - Outgoing calls" })

-- Floating terminal
keymap({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>", { desc = "Floating terminal toggle" })
