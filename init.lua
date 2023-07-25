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
--主键
vim.g.mapleader=" "
--窗口间移动
vim.keymap.set("n","<C-l>","<C-w>l",opt)
vim.keymap.set("n","<C-h>","<C-w>h",opt)
vim.keymap.set("n","<C-j>","<C-w>j",opt)
vim.keymap.set("n","<C-k>","<C-w>k",opt)
--分割和移动窗口
vim.keymap.set("n","<Leader>sw",":split\n",opt)
vim.keymap.set("n","<Leader>vw",":vsplit\n",opt)
vim.keymap.set("n","<Leader>cw",":close\n",opt)
vim.keymap.set("n","<Leader>mwl","<C-W>L",opt)
vim.keymap.set("n","<Leader>mwh","<C-W>H",opt)
vim.keymap.set("n","<Leader>mwj","<C-W>J",opt)
vim.keymap.set("n","<Leader>mwk","<C-W>K",opt)
--ESC键
vim.keymap.set("i","jk","<ESC>",opt)
--换行也能移动的j和k
vim.keymap.set("n","j",[[v:count?'j':'gj']],{noremap=true,expr=true})
vim.keymap.set("n","k",[[v:count?'k':'gk']],{noremap=true,expr=true})

--lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({})
