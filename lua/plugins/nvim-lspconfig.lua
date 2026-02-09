local M = {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lsp = vim.lsp
    local emmet_capabilities = vim.lsp.protocol.make_client_capabilities()
    emmet_capabilities.textDocument.completion.completionItem.snippetSupport = true
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

    local on_attach = function(client, bufnr)
      vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "<space>ft", function()
        vim.lsp.buf.format({ async = true })
      end, bufopts)
    end

    local lsp_flags = { debounce_text_changes = 150 }

    -- Configure diagnostics with signs (modern API)
    vim.diagnostic.config({
      virtual_text = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = " ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
      severity_sort = true,
    })

    local lsp_format = require("lsp-format")
    lsp_format.setup({})

    local servers = {
      astro = {
        on_attach = lsp_format.on_attach,
      },
      svelte = {
        on_attach = on_attach,
        flags = lsp_flags,
      },
      tailwindcss = {
        on_attach = on_attach,
        flags = lsp_flags,
      },
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      },
      emmet_ls = {
        capabilities = emmet_capabilities,
        filetypes = { "html", "astro", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            },
          },
        },
      },
    }

    require("typescript-tools").setup({
      settings = {
        tsserver_plugins = {
          "@styled/typescript-styled-plugin",
        },
      },
    })

    for name, config in pairs(servers) do
      lsp.config(name, config)
      lsp.enable(name)
    end
  end,
}
return M
