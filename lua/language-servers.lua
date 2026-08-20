vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local function map(mode, lhs, rhs)
			vim.keymap.set(mode, lhs, rhs, { buffer = event.buf })
		end

		map("n", "gd", vim.lsp.buf.definition)
		map("n", "gD", vim.lsp.buf.declaration)

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if not client then
			return
		end

		-- Highlight the current word under the cursor
		if client:supports_method("textDocument/documentHighlight") then
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end,
})

vim.lsp.config("*", {
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
})

-- luau lsp
vim.lsp.config("luau-lsp", {
	settings = {
		["luau-lsp"] = {
			completion = {
				autocompleteEnd = true,
				imports = {
					separateGroupsWithLine = true,
					stringRequires = {
						enabled = true,
					},
					useConst = false,
				},
				showDeprecatedItems = false,
			},
			fflags = {
				enableNewSolver = true,
			},
			hover = {
				multilineFunctionDefinitions = true,
				showTableKinds = true,
			},
			platform = {
				type = "roblox",
			},
			plugin = {
				enabled = true,
			},
		},
	},
})

require("luau-lsp").setup {
	platform = {
		type = "roblox",
	},
	types = {
		roblox_security_level = "PluginSecurity",
	},
	fflags = {
		enable_new_solver = true,
	},
	plugin = {
		enabled = true,
	},
}

-- additional json lsp config
local function get_json_schemas()
	local schemas = require("schemastore").json.schemas()

	-- Add the rojo json schema for rojo project files
	table.insert(schemas, {
		fileMatch = { "*.project.json" },
		url = "https://raw.githubusercontent.com/rojo-rbx/vscode-rojo/master/schemas/project.template.schema.json",
	})

	return schemas
end

vim.lsp.config("jsonls", {
	settings = {
		json = {
			schemas = get_json_schemas(),
			validate = { enable = true },
		},
	},
})

-- other lsp
vim.lsp.enable {
	"lua_ls",
	"nixd",
	"jsonls",
	"taplo",
	"html",
	"cssls",
	"ts_ls",
	"eslint",
}
