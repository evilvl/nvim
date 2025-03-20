return {
	"williamboman/mason.nvim",
	enabled = require("nixCatsUtils").lazyAdd(true, false),
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
}
