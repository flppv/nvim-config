local M = {
	"williamboman/mason.nvim",
	dependencies = "williamboman/mason-lspconfig.nvim",
	event = "VeryLazy",
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "sumneko_lua", "cssls", "html", "tsserver", "quick_lint_js", "svelte" },
			automatic_installation = true,
		})
	end,
}

return M
