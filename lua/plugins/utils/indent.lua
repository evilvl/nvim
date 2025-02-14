-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   enabled= require('nixCatsUtils').lazyAdd(true,true),
--   event = {"BufReadPost", "BufNewFile"},
--   main = "ibl",
--   opts = {
--   indent = { highlight = highlight, char = "▏" }, }
-- }
return {
  "folke/snacks.nvim",
enabled= require('nixCatsUtils').lazyAdd(true,true),
  event = {"BufReadPost", "BufNewFile"},
  opts = {
    indent={
      char = "▏",
      scope = { char = "▏", },
    }
  },
}
