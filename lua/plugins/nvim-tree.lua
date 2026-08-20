require("plugins.web-devicons")

require("nvim-tree").setup {
	view = {
		width = 45,
	},
	filters = {
		git_ignored = false,
		dotfiles = false,
	},
}

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
