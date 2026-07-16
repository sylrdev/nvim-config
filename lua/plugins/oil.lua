require("plugins.mini-icons")
require("plugins.web-devicons")

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
	confirmation = {
		border = "rounded",
	},
})

vim.keymap.set("n", "<leader>e", ":Oil<CR>", {silent = true})
