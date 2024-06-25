local map = vim.keymap.set
local opts_silent = { noremap = true, silent = true }
local opts_expr = { expr = true, silent = true }

vim.g.mapleader = " "

-- Normal mode mappings (built-in functionality)
local function set_normal_maps()
  -- Window navigation
  map("n", "<c-h>", "<c-w>h", opts_silent)
  map("n", "<c-j>", "<c-w>j", opts_silent)
  map("n", "<c-k>", "<c-w>k", opts_silent)
  map("n", "<c-l>", "<c-w>l", opts_silent)

  -- Scrolling
  map("n", "<C-d>", "<C-d>zz", opts_silent)
  map("n", "<C-u>", "<C-u>zz", opts_silent)

  -- File operations
  map("n", "<c-s>", ":w<cr>", opts_silent)
end

-- Non-leader key mapping for Oil command
map("n", "m", ":Oil<CR>", opts_silent)

-- Leader mappings (mostly plugin-related)
local function set_leader_maps()
  -- Trouble
  map("n", "<leader>tr", ":TroubleToggle<CR>", { desc = "Toggle Trouble" })

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
  map("i", "<C-i>", function()
    return vim.fn["codeium#Accept"]()
  end, opts_expr)
  map("i", "<c-;>", function()
    return vim.fn["codeium#CycleCompletions"](1)
  end, opts_expr)
  map("i", "<c-,>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
  end, opts_expr)
  map("i", "<c-x>", function()
    return vim.fn["codeium#Clear"]()
  end, opts_expr)
end

-- Set all mappings
set_normal_maps()
set_leader_maps()
set_other_plugin_maps()
