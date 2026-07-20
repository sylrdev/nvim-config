local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 999
opt.tabstop = 4
opt.shiftwidth = 4
opt.winborder = "rounded"
opt.clipboard = "unnamedplus"
opt.exrc = true
opt.secure = true

vim.diagnostic.config {
	float = {
		border = "rounded",
	},
	virtual_lines = {
		current_line = true,
	},
}
