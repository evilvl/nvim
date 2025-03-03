return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	dev = require("nixCatsUtils").lazyAdd(true, false),
	config = function()
		require("catppuccin").setup({
			transparent_background = true, -- Включаем прозрачный фон
			term_colors = true, -- Если хочешь, чтобы работало в терминале
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
