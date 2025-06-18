local M = {
  -- {
  --   "Shatur/neovim-ayu",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     require("ayu").setup({
  --       mirage = true,
  --     })
  --
  --     vim.cmd("colorscheme ayu")
  --     vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
  --   end,
  -- },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })

      vim.cmd("colorscheme everforest")
      vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
    end,
  },
}

return M
