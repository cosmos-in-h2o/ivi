return{
	event="VeryLazy",
    "nvim-tree/nvim-tree.lua",
    requires={ 
        "nvim-tree/nvim-web-devicons",
        opt = true 
    },
    config=function ()
        require("nvim-tree").setup()
    end
}
