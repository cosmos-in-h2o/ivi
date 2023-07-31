return {
	"rmagatti/goto-preview",
	lazy = true,
	config = function()
		require("goto-preview").setup({
			width = 120,
			height = 25,
			default_mappings = true,
			debug = false,
			opacity = nil,
			post_open_hook = nil,
		})
	end,
}
