return {
	"folke/snacks.nvim",
	event = "VeryLazy",
	opts = {
		lazygit = {},
	},
	keys = {
		{
			"<Leader>gg",
			function()
				require("snacks").lazygit()
			end,
			desc = "[G]it",
		},
		{
			"<Leader>gl",
			function()
				require("snacks").lazygit.log()
			end,
			desc = "Git [l]ogs",
		},
	},
}
