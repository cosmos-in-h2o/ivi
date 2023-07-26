return {
    require("plugins.editor.colorscheme"),
    require("plugins.editor.treesitter"),
    "p00f/nvim-ts-rainbow",
    require("plugins.ui.lualine"),
    require("plugins.ui.telescope"),
    require("plugins.ui.nvim-tree"),
    require("plugins.ui.bufferline"),
    require("plugins.ui.gitsigns"),
    require("plugins.lsp.nvim-lspconfig"),
    require("plugins.lsp.mason"),
    require("plugins.lsp.mason-lspconfig"),
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path", -- 文件路径
    require("plugins.comment"),--注释
    require("plugins.autopair"),--括号
}