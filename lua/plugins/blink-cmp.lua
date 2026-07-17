require("plugins.lazydev")

local blink = require("blink.cmp")

blink.build():pwait()

blink.setup {
	keymap = {
		preset = "default",
		["<return>"] = { "accept", "fallback" },
		["<tab>"] = { "select_next", "fallback" },
		["\\"] = { "select_prev", "fallback" },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "lazydev" },
		providers = {
			lazydev = {
				module = "lazydev.integrations.blink",
				fallbacks = { "lsp" },
			},
		},
	},
	cmdline = {
		enabled = false,
	},
}
