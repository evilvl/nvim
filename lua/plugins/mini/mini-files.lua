return {
 'echasnovski/mini.files',
version = false,
enabled= require('nixCatsUtils').lazyAdd(true, true),
  event = "VeryLazy",
opts = {
mappings = {
    synchronize = '-',
  },
},
vim.keymap.set('n', '-', ':lua MiniFiles.open()<CR>', { desc = 'MiniFiles' })
}
