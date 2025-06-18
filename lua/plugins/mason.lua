local M = {
	"williamboman/mason.nvim",
	dependencies = "williamboman/mason-lspconfig.nvim",
	event = "VeryLazy",
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "cssls", "html", "quick_lint_js" },
			automatic_installation = true,
		})
	end,
}

return M
