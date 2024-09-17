-- Copyright (C) 2024, Anderson Lizarazo Tellez.

local default_options = {
	enabled = true,

	markers = {
		".gitignore",
		".git",
	},
}

local M = {}

function M.setup(opts)
	if opts == nil then
		vim.g.autocd = default_options
		return
	end

	vim.g.autocd = vim.tbl_deep_extend("force", default_options, opts)
end

return M
