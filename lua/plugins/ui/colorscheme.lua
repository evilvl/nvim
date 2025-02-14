return {
  'catppuccin/nvim',
  name = 'catppuccin-nvim',
  dev = require('nixCatsUtils').lazyAdd(true, true),
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
