local prettier = require("prettier")

prettier.setup({
  bin = "prettierd", -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

prettier.setup({
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        -- if `true`, checks `package.json` for `"prettier"` key
        check_package_json = false,
      })
    end,
    -- runtime_condition = function(params)
    runtime_condition = function()
      -- return false to skip running prettier
      return true
    end,
    timeout = 5000,
  },
})
