-- write all telescope keymaps

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
map("n", "<leader>ft", "<cmd>Telescope treesitter<cr>", opts)
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", opts)
map("n", "<leader>fo", "<cmd>Telescope vim_options<cr>", opts)
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)
map("n", "<leader>fa", "<cmd>Telescope autocommands<cr>", opts)
map("n", "<leader>fr", "<cmd>Telescope registers<cr>", opts)
map("n", "<leader>fl", "<cmd>Telescope loclist<cr>", opts)
map("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opts)
map("n", "<leader>fw", "<cmd>Telescope file_browser<cr>", opts)
map("n", "<leader>fd", "<cmd>Telescope lsp_document_diagnostics<cr>", opts)
map("n", "<leader>fw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", opts)
map("n", "<leader>fe", "<cmd>Telescope lsp_document_diagnostics<cr>", opts)
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", opts)
map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", opts)
map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", opts)
map("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", opts)
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", opts)
map("n", "<leader>fw", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
map("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", opts)
map("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)
map("n", "<leader>fn", "<cmd>Telescope neoclip<cr>", opts)
