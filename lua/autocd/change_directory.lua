-- Copyright (C) 2024, Anderson Lizarazo Tellez.

return function()
	local root_dir = vim.fs.root(0, vim.g.autocd.markers)
	if root_dir == nil then
		return
	end

	local cwd = vim.uv.cwd()
	if cwd == nil then
		return
	end

	if root_dir == cwd then
		return
	end

	if root_dir == "." then
		return
	end

	print("Root directory:", root_dir)
	vim.fn.chdir(root_dir)
end
