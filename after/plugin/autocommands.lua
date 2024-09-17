-- Copyright (C) 2024, Anderson Lizarazo Tellez.

if vim.g.autocd.enabled then
	vim.api.nvim_create_autocmd("BufEnter", {
		pattern = "*",
		callback = function()
			require("autocd.change_directory")()
		end,
	})
end
