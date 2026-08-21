local function isNixos()
	return vim.fn.filereadable("/etc/NIXOS") == 1 and vim.fn.has("linux") == 1
end

local function installPlugins(list)
	local plugins = {}

	-- format
	for _, repo in ipairs(list) do
		local url = string.format("https://github.com/%s", repo)
		table.insert(plugins, url)
	end

	-- install
	vim.pack.add(plugins)
end

local function deletePlugins()
	local plugins = vim.pack.get()
	local pluginNames = {}

	for _, value in ipairs(plugins) do
		table.insert(pluginNames, value.spec.name)
	end

	vim.pack.del(pluginNames)
end

if isNixos() == false then
	-- deletePlugins()
	installPlugins {
		"catppuccin/nvim",
		"nvim-mini/mini.icons",
		"nvim-tree/nvim-web-devicons",
		"vyfor/cord.nvim",
		"nvim-mini/mini.pick",
		"nvim-lualine/lualine.nvim",
		"windwp/nvim-autopairs",
		"lewis6991/gitsigns.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"mason-org/mason.nvim",
		"stevearc/conform.nvim",
		"saghen/blink.cmp",
		"saghen/blink.lib",
		"folke/lazydev.nvim",
		"neovim/nvim-lspconfig",
		"lopi-py/luau-lsp.nvim",
		"b0o/SchemaStore.nvim",
		"mfussenegger/nvim-lint",
		"j-hui/fidget.nvim",
		"nvim-tree/nvim-tree.lua",
		"nvim-treesitter/nvim-treesitter",
	}

	require("plugins.mason-tool-installer")
end

require("plugins.catppuccin")
require("plugins.cord")
require("plugins.mini-pick")
require("plugins.lualine")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.conform")
require("plugins.blink-cmp")
require("plugins.lint")
require("plugins.mason") -- used as a catalog only while on NixOS
require("plugins.fidget")
require("plugins.nvim-tree")
require("plugins.nvim-treesitter")
