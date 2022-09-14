local null_ls = require("null-ls")

--[[ null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
			  if client.name == "tsserver" then                                                                                                   
        client.server_capabilities.document_formatting = false -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end
      vim.cmd("nnoremap <silent><buffer> <Leader>ft :lua vim.lsp.buf.format({async=true})<CR>")

      -- format on save
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format({ async=true })")
    end

    --[[ if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end ]]
  -- end,
-- }) ]]
