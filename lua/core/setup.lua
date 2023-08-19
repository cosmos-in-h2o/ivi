require("config.options")
require("config.keymaps")
--设置主题
require("config.colorscheme").config()
require("config.cmp")
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.ixx", "*.cppm" },
	command = "set filetype=cpp",
})
--使用neovimGUI的时候设置字体
vim.o.guifont = "JetBrainsMono Nerd Font:h20"
