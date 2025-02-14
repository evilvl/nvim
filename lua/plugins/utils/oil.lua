local enabled = require("nixCatsUtils").lazyAdd(true, true)

if enabled then
	vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
end

return {
	"stevearc/oil.nvim",
	enabled = enabled,
	event = "VeryLazy",
	opts = {
		skip_confirm_for_simple_edits = true,
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
