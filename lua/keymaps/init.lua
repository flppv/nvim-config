local map = vim.keymap.set
local opts_silent = { noremap = true, silent = true }
local opts_expr = { expr = true, silent = true }

vim.g.mapleader = " "

-- Normal mode mappings (built-in functionality)
local function set_normal_maps()
  -- Scrolling
  map("n", "<C-d>", "<C-d>zz", opts_silent)
  map("n", "<C-u>", "<C-u>zz", opts_silent)

  map("n", "<C-h>", "<C-w>h", opts_silent)
  map("n", "<C-j>", "<C-w>j", opts_silent)
  map("n", "<C-k>", "<C-w>k", opts_silent)
  map("n", "<C-l>", "<C-w>l", opts_silent)

  -- Oil
  map("n", "m", ":Oil<CR>", opts_silent)

  -- File operations
  map("n", "<C-s>", ":w<cr>", opts_silent)
  map("n", "<C-q>", ":q<cr>", opts_silent)

  -- Marks
  map("n", "<leader>m", "m", opts_silent)          -- Set mark
  map("n", "<leader>a", "'a", opts_silent)         -- Jump to mark 'a'
  map("n", "<leader>da", "d`a", opts_silent)       -- Delete mark 'a'
  map("n", "<leader>lm", ":marks<CR>", opts_silent) -- List all marks
end

-- Leader mappings (mostly plugin-related)
local function set_leader_maps()
  -- Lazy
  map("n", "<leader>z", ":Lazy<CR>", { desc = "Open Lazy" })

  -- LSP
  map("n", "<leader>x", ":LspInfo<CR>", { desc = "Lsp Info" })

  -- Noice
  map("n", "<leader>nl", ":NoiceLast<CR>", { desc = "Noice Last Message" })
  map("n", "<leader>nh", ":NoiceHistory<CR>", { desc = "Noice History" })

  -- Misc
  map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })
end

-- Other plugin-specific mappings (non-leader)
local function set_other_plugin_maps()
  -- Codeium
  map("i", "<C-e>", function()
    return vim.fn["codeium#Accept"]()
  end, opts_expr)

  map("i", "<C-u>", function()
    return vim.fn["codeium#CycleCompletions"](1)
  end, opts_expr)
  map("i", "<C-y>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
  end, opts_expr)
  map("i", "<C-z>", function()
    return vim.fn["codeium#Clear"]()
  end, opts_expr)
end

-- Set all mappings
set_normal_maps()
set_leader_maps()
set_other_plugin_maps()
