return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config=function ()
        require'nvim-treesitter.configs'.setup {
            -- 添加不同语言
            ensure_installed = {"c", "cpp","json", "lua", "python", "rust", "markdown", "markdown_inline" },
          
            highlight = { enable = true },
            indent = { enable = true },
          
            -- 不同括号颜色区分
            rainbow = { 
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
				colors={
					"#ff9f5e",
					"#d1d669",
					"#67c27d",
					"#6bb3c9",
					"#a569ff",
					"#ff824d",
				}
            }
        }
    end
}

