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
vim.keymap.set("n","<leader>sw",":split<CR>",opt)
vim.keymap.set("n","<leader>vw",":vsplit<CR>",opt)
vim.keymap.set("n","<leader>cw",":close<CR>",opt)
vim.keymap.set("n","<leader>mwl","<C-W>L",opt)
vim.keymap.set("n","<leader>mwh","<C-W>H",opt)
vim.keymap.set("n","<leader>mwj","<C-W>J",opt)
vim.keymap.set("n","<leader>mwk","<C-W>K",opt)
--ESC键
vim.keymap.set("i","jk","<ESC>",opt)
--换行也能移动的j和k
vim.keymap.set("n","j",[[v:count?'j':'gj']],{noremap=true,expr=true})
vim.keymap.set("n","k",[[v:count?'k':'gk']],{noremap=true,expr=true})

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
--nvim-tree
vim.keymap.set("n","<leader>e",":NvimTreeToggle<CR>",{})
--bufferline
vim.keymap.set("n","L",":bnext<CR>")
vim.keymap.set("n","H",":bprevious<CR>")
vim.keymap.set("n","<leader>q",":bdelete<CR>")