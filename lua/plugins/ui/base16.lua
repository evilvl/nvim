return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			overrides = {
				-- FloatBorder darker
				NormalFloat = { link = "Normal" },
				FloatBorder = { link = "Normal" },

				-- DiagnosticSignHint NONE bg
				SignColumn = { bg = "NONE" },
				DiagnosticSignError = { bg = "NONE" },
				DiagnosticSignWarn = { bg = "NONE" },
				DiagnosticSignInfo = { bg = "NONE" },
				DiagnosticSignHint = { bg = "NONE" },
			},
		})
		vim.cmd.colorscheme("gruvbox")
	end,
}
