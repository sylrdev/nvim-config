local function getTooltip()
	return string.format("Nvim %i.%i.%i", vim.version().major, vim.version().minor, vim.version().patch)
end

require("cord").setup {
	editor = {
		tooltip = getTooltip(),
	},
	display = {
		theme = "catppuccin",
		flavor = "accent",
	},
	idle = {
		enabled = false,
	},
}
