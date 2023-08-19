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
			-- cmd = {
			-- 	"clangd",
			-- 	"--clang-tidy", -- 开启 clang-tidy
			-- 	"-Wno-unused-variable",
			-- 	"-Wno-infinite-recursion",
			-- 	"-Wno-array-bounds",
			-- 	"-Werror=implicit-function-declaration",
			-- 	"-Wshadow",
			-- 	"-Wno-shadow-field-in-constructor-modified",
			-- 	"-Wno-shadow-ivar",
			-- 	"-Wuninitialized",
			-- 	"-Wunused-label",
			-- 	"-Wunused-lambda-capture",
			-- },

		}
		--json
		require("lspconfig").jsonls.setup {
			capabilities = capabilities,
		}
		--rust
		require("lspconfig").rust_analyzer.setup {
			capabilities = capabilities,
		}
	end
}
