-- TODO
return { 
  'echasnovski/mini.move',
  version = '*',
  event = "VeryLazy",
  enabled= require('nixCatsUtils').lazyAdd(true, true),
   mappings = {
    left = '<S-h>',
    right = '<S-l>',
    down = '<S-j>',
    up = '<S-k>',
     },
}
