return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			overrides = {
				NormalFloat = { link = "Normal" },
				FloatBorder = { link = "Normal" },
			},
		})

		vim.cmd.colorscheme("gruvbox")
		vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
		vim.api.nvim_set_hl(0, "SnacksTerminal", { link = "Normal" })
		vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { link = "FloatBorder" })
	end,
}
