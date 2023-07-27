return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("lspconfig").lua_ls.setup {
            capabilities = capabilities,
        }
        require("lspconfig").pylsp.setup {
            capabilities = capabilities,
        }
        require("lspconfig").clangd.setup {
            capabilities = capabilities,
        }
        require("lspconfig").cmake.setup {
            capabilities = capabilities,
        }
    end
}
