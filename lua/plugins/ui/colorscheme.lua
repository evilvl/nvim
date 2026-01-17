return {
	"catppuccin/nvim",
	name = "catppuccin-nvim",
	enabled = require("nixCatsUtils").enableForCategory("ui.colorscheme.catppuccin-nvim", true),
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
