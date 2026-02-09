local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File pickers
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>fi", "<cmd>Telescope import<cr>", { desc = "Imports" })

-- Help & introspection
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>fa", "<cmd>Telescope autocommands<cr>", { desc = "Autocommands" })
map("n", "<leader>fO", "<cmd>Telescope vim_options<cr>", { desc = "Vim options" })

-- Vim lists
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Marks" })
map("n", "<leader>fr", "<cmd>Telescope registers<cr>", { desc = "Registers" })
map("n", "<leader>fl", "<cmd>Telescope loclist<cr>", { desc = "Location list" })
map("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix" })

-- LSP pickers
map("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" })
map("n", "<leader>fR", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
map("n", "<leader>fD", "<cmd>Telescope lsp_definitions<cr>", { desc = "Definitions" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
map("n", "<leader>fw", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Workspace symbols" })
map("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Type definitions" })

-- Treesitter
map("n", "<leader>fT", "<cmd>Telescope treesitter<cr>", { desc = "Treesitter symbols" })

-- Colorscheme
map("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", { desc = "Colorschemes" })
