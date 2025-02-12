return {
  "nvim-lualine/lualine.nvim",
enabled= require('nixCatsUtils').lazyAdd(true,true),
 dependencies = { 'nvim-tree/nvim-web-devicons' },
   opts =  {
options = {
     icons_enabled = true,
       component_separators = { left = '', right = ''},
       section_separators = { left = '', right = ''},
     },
   }}
