return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },

	opts = {
		keymap = {
			preset = "default",
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<CR>"] = { "select_and_accept", "fallback" },
			["<escape>"] = { "hide", "fallback" },
		},

		cmdline = {
			keymap = {
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
			},
		},

		signature = { enabled = true },

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
			},
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		fuzzy = {
			prebuilt_binaries = {
				download = true,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},

	opts_extend = { "sources.default" },
}
