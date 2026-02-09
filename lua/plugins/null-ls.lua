local M = {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        formatting.shfmt,
        formatting.stylua,
        formatting.prettier,
        formatting.clang_format,
        formatting.black,
        formatting.fish_indent,
        diagnostics.fish,
        diagnostics.trail_space,
        code_actions.gitsigns,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 2000 })
            end,
          })
        end
      end,
    })
  end,
}

return M
