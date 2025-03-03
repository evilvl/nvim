return {
	"nvim-treesitter/nvim-treesitter",
	build = require("nixCatsUtils").lazyAdd(":TSUpdate"),
	opts = {
		ensure_installed = require("nixCatsUtils").lazyAdd({ "bash", "lua", "nix", "java" }, false),
		auto_install = require("nixCatsUtils").lazyAdd(true, false),
	},
}
