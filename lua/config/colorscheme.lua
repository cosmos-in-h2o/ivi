theme_module={}
theme_module.theme="gruvbox"
function theme_module.config()
	vim.o.background = "dark"
	vim.cmd(string.format("%s %s","colorscheme",theme_module.theme))
end
return theme_module
