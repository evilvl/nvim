-- TODO
return { 
  'echasnovski/mini.move',
  version = '*',
  enabled= require('nixCatsUtils').lazyAdd(true, true),
   mappings = {
    left = '<S-h>',
    right = '<S-l>',
    down = '<S-j>',
    up = '<S-k>',
     },
}
