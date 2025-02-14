return {
	"folke/snacks.nvim",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		indent = {
			char = "▏",
			scope = { char = "▏" },
		},
	},
}
