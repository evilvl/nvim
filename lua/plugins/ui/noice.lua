return {
	"folke/noice.nvim",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
}
