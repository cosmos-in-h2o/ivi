local set=vim.o
--行号
set.number=true 
--相对行号
set.relativenumber=true 
--剪切板
set.clipboard="unnamed"
--copy高亮
vim.api.nvim_create_autocmd({"TextYankPost"},{
	pattern={"*"},
	callback=function()
		vim.highlight.on_yank({
			timeout=300,
		})
	end,
})

--键位
local opt={noremap=true,silent=true}

vim.keymap.set("n","<C-l>","<C-w>l",opt)
vim.keymap.set("n","<C-h>","<C-w>h",opt)
vim.keymap.set("n","<C-j>","<C-w>j",opt)
vim.keymap.set("n","<C-k>","<C-w>k",opt)
