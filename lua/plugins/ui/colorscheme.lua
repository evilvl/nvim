return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	opts = {
		flavour = "mocha", -- latte, frappe, macchiato, mocha

		background = {
			light = "latte",
			dark = "mocha",
		},

		transparent_background = false,
		show_end_of_buffer = false,

		term_colors = true,

		dim_inactive = {
			enabled = true,
			shade = "dark",
			percentage = 0.15,
		},

		no_italic = false,
		no_bold = false,
		no_underline = false,

		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},

		integrations = {
			blink_cmp = true,
			noice = true,
			notify = true,
			treesitter = true,
			which_key = true,
			gitsigns = true,
			indent_blankline = true,
			mason = true,
			lsp_trouble = true,
			telescope = true,
		},
	},

	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin")
	end,
}
