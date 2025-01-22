return { 
  'echasnovski/mini.comment',
  version = '*',
  enabled= require('nixCatsUtils').lazyAdd(true, true),
  event = "VeryLazy",
}
