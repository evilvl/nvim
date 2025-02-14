return {
	"echasnovski/mini.comment",
	enabled = require("nixCatsUtils").lazyAdd(true, true),
	event = { "BufReadPost", "BufNewFile" },
}
