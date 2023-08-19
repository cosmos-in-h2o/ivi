local set = vim.o
--行号
set.number = true
--相对行号
set.relativenumber = true
--缩进
set.tabstop = 4
set.shiftwidth = 4
set.expandtap = true
set.autoindent = true
--剪切板
set.clipboard = "unnamed"
--copy高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
