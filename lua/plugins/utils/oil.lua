return {
	{
		"stevearc/oil.nvim",
		event = "VeryLazy",
		keys = {
			{ "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
		},
		opts = {
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
