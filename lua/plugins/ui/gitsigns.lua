return{
	event="VeryLazy",
    "lewis6991/gitsigns.nvim",
    config=function ()
        require('gitsigns').setup {
            signs = {
                add = {text = '▎'},
                change = {text = '▎'},
                delete = {text = '➤'},
                topdelete = {text = '➤'},
                changedelete = {text = '▎'},
            },
        }
    end
}
