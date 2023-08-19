if vim.g.vscode then
	require("vscode.keymaps")
	require("vscode.options")
else
	require("core.download")
	require("core.setup")
end
