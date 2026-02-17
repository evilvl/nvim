return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = nil,
			icons_enabled = true,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true,
		},
	},
}
