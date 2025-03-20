return {
	"nvim-java/nvim-java",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
}
