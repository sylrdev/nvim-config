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

installPlugins({
	"catppuccin/nvim",
	"stevearc/oil.nvim",
	"nvim-mini/mini.icons",
	"nvim-tree/nvim-web-devicons",
	"vyfor/cord.nvim",
	"nvim-mini/mini.pick",
	"nvim-lualine/lualine.nvim",
	"windwp/nvim-autopairs",
	"lewis6991/gitsigns.nvim",
	"folke/noice.nvim",
	"MunifTanjim/nui.nvim",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	"mason-org/mason.nvim",
})

require("plugins.catppuccin")
require("plugins.oil")
require("plugins.cord")
require("plugins.mini-pick")
require("plugins.lualine")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.noice")
require("plugins.mason-tool-installer")
