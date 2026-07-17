require("mason").setup()

require("mason-tool-installer").setup {
	ensure_installed = {
		-- language servers
		"lua-language-server",
		"luau-lsp",
		"json-lsp",
		"taplo",

		-- formatters
		"stylua",
		"prettierd",

		-- linters
		"selene",
	},
}
