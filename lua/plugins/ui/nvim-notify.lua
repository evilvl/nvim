return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	opts = {
		fps = 60,
		render = "wrapped-compact",
		stages = "fade_in_slide_out",

		timeout = 3000,
		top_down = false,
		minimum_width = 40,

		background_colour = "#000000",

		icons = {
			DEBUG = "",
			ERROR = "",
			INFO = "",
			TRACE = "✎",
			WARN = "",
		},
	},
}
