return{
    "akinsho/toggleterm.nvim", version = "*", 
    config = function ()
        require("toggleterm").setup({
            open_mapping = "<C-t>",
            start_in_insert = true,
            direction = "float",
        })
    end
}