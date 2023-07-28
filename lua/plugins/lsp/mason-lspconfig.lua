return {
    event = "VeryLazy",
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
         	-- 确保安装，根据需要填写
            ensure_installed = {
                "lua_ls",
                "pyright",
                -- "clangd", 这个外部安装
				"jsonls",
            },
		})
    end
}
