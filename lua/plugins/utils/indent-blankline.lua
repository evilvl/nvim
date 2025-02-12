return {
  "lukas-reineke/indent-blankline.nvim",
  enabled= require('nixCatsUtils').lazyAdd(true,true),
  event = {"BufReadPost", "BufNewFile"},
  main = "ibl",
  opts = {
  indent = { highlight = highlight, char = "▏" }, }
}
