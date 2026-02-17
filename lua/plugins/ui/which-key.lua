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

		wk.register({
			["<leader>c"] = { name = "[C]ode" },
			["<leader>f"] = { name = "[F]ind" },
			["<leader>g"] = { name = "[G]it" },
			["<leader>l"] = { name = "[L]SP" },
			["<leader>w"] = { name = "[W]orkspace" },
			["<leader>s"] = { name = "[S]earch" },
		})
	end,
}
