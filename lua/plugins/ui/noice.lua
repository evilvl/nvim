return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true,
			},
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
			},
			messages = {
				enabled = true,
			},
			notify = {
				enabled = true,
				view = "notify",
			},
			popupmenu = {
				enabled = true,
				backend = "nui",
			},
		},
		config = function(_, opts)
			require("noice").setup(opts)
			vim.notify = require("notify")
		end,
	},
}
