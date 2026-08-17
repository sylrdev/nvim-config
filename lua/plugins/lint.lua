require("lint").linters_by_ft = {
	lua = { "selene" },
	luau = { "selene" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
		require("lint").try_lint("cspell")
	end,
})
