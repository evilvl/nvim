return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({
					async = true,
					lsp_fallback = true,
				})
			end,
			desc = "[C]ode [F]ormat",
		},
	},

	opts = {
		notify_on_error = false,

		format_on_save = {
			timeout_ms = 300,
			lsp_fallback = true,
		},

		formatters_by_ft = {
			lua = { "stylua" },
			nix = { "nixfmt" },

			c = { "clang-format" },
			cpp = { "clang-format" },

			python = { "isort", "ruff_format" },

			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },

			sh = { "shfmt" },
			bash = { "shfmt" },
		},
	},
}
