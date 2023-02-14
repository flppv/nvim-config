local M = {
	"neovim/nvim-lspconfig",
	lazy = true,
	config = function()
		local lspconfig = require("lspconfig")

		-- local configs = require('lspconfig/configs')
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		-- Mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
		local opts = {
			noremap = true,
			silent = true,
		}
		-- vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

		-- Use an on_attach function to only map the following keys
		-- after the language server attaches to the current buffer
		local on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

			-- Mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local bufopts = {
				noremap = true,
				silent = true,
				buffer = bufnr,
			}
			vim.keymap.set("n", "<space>ft", function()
				vim.lsp.buf.format({
					async = true,
				})
			end, bufopts)
		end

		local lsp_flags = {
			debounce_text_changes = 150,
		}

		local signs = {
			Error = " ",
			Warn = " ",
			Hint = " ",
			Info = " ",
		}

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, {
				text = icon,
				texthl = hl,
				numhl = hl,
			})
		end

		local config = {
			virtual_text = true,
		}

		vim.diagnostic.config(config)

		lspconfig["tsserver"].setup({
			on_attach = on_attach,
			flags = lsp_flags,
		})

		lspconfig["svelte"].setup({
			on_attach = on_attach,
			flags = lsp_flags,
		})

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = "LuaJIT",
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { "vim" },
						checkThirdParty = false,
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		})

		lspconfig.emmet_ls.setup({
			-- on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
			init_options = {
				html = {
					options = {
						-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
						["bem.enabled"] = true,
					},
				},
			},
		})
	end,
}
return M
