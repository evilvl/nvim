return {
	"rcarriga/nvim-notify",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	event = "VeryLazy",
	opts = {
		fps = 60,
		render = "wrapped-compact",
		stages = "fade_in_slide_out",
		level = 2,
		icons = {
			DEBUG = "",
			ERROR = "",
			INFO = "",
			TRACE = "",
			WARN = "",
		},
		top_down = false,
		minimum_width = 30,
		timeout = 2000,
	},
}
