--键位
local opt = { noremap = true, silent = true }
--主键
vim.g.mapleader = " "
--窗口间移动
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
--分割和移动窗口
vim.keymap.set("n", "<leader>sw", ":split<CR>", opt)
vim.keymap.set("n", "<leader>vw", ":vsplit<CR>", opt)
vim.keymap.set("n", "<leader>cw", ":close<CR>", opt)
vim.keymap.set("n", "<leader>mwl", "<C-W>L", opt)
vim.keymap.set("n", "<leader>mwh", "<C-W>H", opt)
vim.keymap.set("n", "<leader>mwj", "<C-W>J", opt)
vim.keymap.set("n", "<leader>mwk", "<C-W>K", opt)
--ESC键
vim.keymap.set("i", "jk", "<ESC>", opt)
--换行也能移动的j和k
vim.keymap.set("n", "j", [[v:count?'j':'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count?'k':'gk']], { noremap = true, expr = true })
--取消高亮
vim.keymap.set("n", "<leader>nl", ":nohl<CR>")
--插件
--telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
--nvim-tree
vim.keymap.set("n", "<leader>ts", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>", {})
--bufferline
vim.keymap.set("n", "L", ":bnext<CR>")
vim.keymap.set("n", "H", ":bprevious<CR>")
vim.keymap.set("n", "<leader>q", ":bdelete<CR>")
--lsp
local lsp_opt = {}
vim.keymap.set("n", "<leader>nn", vim.lsp.buf.rename, lsp_opt)
vim.keymap.set("n", "<leader>sd", vim.lsp.buf.definition, lsp_opt)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, lsp_opt)
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, lsp_opt)
vim.keymap.set("n", "<leader>kk", vim.lsp.buf.hover, lsp_opt)
vim.keymap.set('n', '<leader>fm', function()
	vim.lsp.buf.format { async = true }
end, lsp_opt)
--outline
vim.keymap.set("n", "<leader>ol", ":SymbolsOutlineOpen<CR>", {})
--flash
vim.keymap.set("n", "<leader>ss", function()
	require("flash").jump()
end, {})
vim.keymap.set("v", "<leader>ss", function()
	require("flash").jump()
end, {})
vim.keymap.set("c", "<leader>ss", function()
	require("flash").jump()
end, {})
