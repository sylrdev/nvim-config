require("mini.pick").setup()

vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { silent = true })
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>", { silent = true })
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>", { silent = true })
