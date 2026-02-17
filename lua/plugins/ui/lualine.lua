return {
	"nvim-lualine/lualine.nvim",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "auto", -- важно
			icons_enabled = true,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true,
		},
	},
}
