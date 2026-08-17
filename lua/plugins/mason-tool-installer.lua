require("plugins.mason")

require("mason-tool-installer").setup {
	ensure_installed = {
		-- language servers
		"lua-language-server",
		"luau-lsp",
		"json-lsp",
		"taplo",
		"vtsls",

		-- formatters
		"stylua",
		"prettierd",

		-- linters
		"selene",
	},
	auto_update = true,
}
