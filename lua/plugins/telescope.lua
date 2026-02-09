local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "piersolenski/telescope-import.nvim",
  },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
      },
      pickers = {
        buffers = {
          show_all_buffers = true,
          sort_lastused = true,
          theme = "dropdown",
          previewer = false,
          mappings = {
            i = {
              ["<c-d>"] = "delete_buffer",
            },
          },
        },
        find_files = {
          theme = "dropdown",
        },
      },
      extensions = {
        import = {
          insert_at_top = true,
          custom_languages = {
            {
              regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
              filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
              extensions = { "js", "ts", "tsx", "jsx" },
            },
          },
        },
      },
    })
    telescope.load_extension("import")
  end,
}

return M
