return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		delay = 200,

		preset = "modern",

		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
		},

		win = {
			border = "rounded",
			padding = { 1, 2 },
		},

		layout = {
			width = { min = 20 },
			spacing = 4,
		},

		filter = function(mapping)
			return mapping.desc and mapping.desc ~= ""
		end,
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)

		wk.add({
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>l", group = "[L]SP" },
			{ "<leader>w", group = "[W]orkspace" },
			{ "<leader>s", group = "[S]earch" },
		})
	end,
}
