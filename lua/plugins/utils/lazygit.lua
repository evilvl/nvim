return {
	"folke/snacks.nvim",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
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
