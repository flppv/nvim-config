local M = {
  "neovim/nvim-lspconfig",
  lazy = true,
  config = function()
    local lsp = vim.lsp
    local emmet_capabilities = vim.lsp.protocol.make_client_capabilities()
    emmet_capabilities.textDocument.completion.completionItem.snippetSupport = true
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

    -- require("lspconfig").biome.setup({ autostart = false })

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
              checkThirdParty = false,
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false,
            },
          },
        },
      },
      emmet_ls = {
        -- on_attach = on_attach,
        capabilities = emmet_capabilities,
        filetypes = { "html", "astro", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
        init_options = {
          html = {
            options = {
              -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
              ["bem.enabled"] = true,
            },
          },
        },
      },
    }

    require("typescript-tools").setup({
      settings = {
        tsserver_plugins = {
          -- for TypeScript v4.9+
          "@styled/typescript-styled-plugin",
          -- or for older TypeScript versions
          -- "typescript-styled-plugin",
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
