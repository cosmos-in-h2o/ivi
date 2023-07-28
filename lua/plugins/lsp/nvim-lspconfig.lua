return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
		--lua
        require("lspconfig").lua_ls.setup {
            capabilities = capabilities,
        }
		--python
        require("lspconfig").pyright.setup {
            capabilities = capabilities,
        }
		--c/c++
        require("lspconfig").clangd.setup {
            capabilities = capabilities,
        }
		--json
		require("lspconfig").jsonls.setup {
            capabilities = capabilities,
        }
    end
}
