local M = {
  "MunifTanjim/prettier.nvim",
  opts = {
    bin = "prettierd", -- or `'prettierd'` (v0.22+)
    filetypes = {"lua", "css", "graphql", "html", "javascript", "javascriptreact", "json", "less", "markdown", "scss",
    "typescript", "typescriptreact", "yaml"},
    ["null-ls"] = {
      condition = function()
        return require("prettier").config_exists({
          -- if `true`, checks `package.json` for `"prettier"` key
          check_package_json = false
        })
      end,
      -- runtime_condition = function(params)
      runtime_condition = function()
        -- return false to skip running prettier
        return true
      end,
      timeout = 5000
    }
  }
}
return M
