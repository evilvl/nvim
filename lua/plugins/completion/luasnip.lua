return {
	"L3MON4D3/LuaSnip",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	name = "luasnip",
	build = require("nixCatsUtils").lazyAdd((function()
		-- TODO
		if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
			return
		end
		return "make install_jsregexp"
	end)()),

	dependencies = { "rafamadriz/friendly-snippets" },

	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
