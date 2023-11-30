local M = {
	"nvimtools/none-ls.nvim",
	event = "BufReadPre",
	lazy = true,
	opts = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		return {
			debug = true,
			sources = {
				completion.luasnip,
				formatting.shfmt,
				formatting.stylua,
				formatting.prettier,
				formatting.clang_format,
				formatting.taplo,
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
		}
	end,
}

return M
