return {
  "neovim/nvim-lspconfig",
  enabled= require('nixCatsUtils').lazyAdd(true,true),
  opts = {
    animate={}
  },
}
