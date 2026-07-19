local function getTooltip()
	-- getting system name
	local systemName = "Unknown"

	if vim.fn.has("win32") == 1 then
		systemName = "Windows"
	elseif vim.fn.has("linux") == 1 then
		systemName = "Linux"
	elseif vim.fn.has("mac") == 1 then
		systemName = "MacOS"
	end

	return string.format(
		"Nvim %i.%i.%i on %s",
		vim.version().major,
		vim.version().minor,
		vim.version().patch,
		systemName
	)
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
