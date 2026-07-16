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
})

require("plugins.catppuccin")
require("plugins.oil")
