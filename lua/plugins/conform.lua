require("conform").setup {
	formatters_by_ft = {
		lua = { "stylua" },
		luau = { "stylua" },
		nix = { "nixfmt" },
		toml = { "taplo" },
		json = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		typescript = { "prettierd" },
		javascript = { "prettierd" },
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
}
