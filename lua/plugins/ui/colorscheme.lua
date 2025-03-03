return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	dev = require("nixCatsUtils").lazyAdd(true, true),
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			term_colors = true,
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
