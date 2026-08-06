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

		icons = {
			mappings = true,
		},

		win = {
			border = "rounded",
			padding = { 0, 1 },
		},

		layout = {
			width = {
				min = 24,
				max = 40,
			},
			spacing = 3,
		},

		filter = function(mapping)
			return mapping.desc and mapping.desc ~= ""
		end,

		spec = {
			{ "<leader>b", group = "[B]uffer" },
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>l", group = "[L]SP" },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>w", group = "[W]orkspace" },
		},
	},
}
