return {
  'catppuccin/nvim',
  name = 'catppuccin-nvim',
  dev = require('nixCatsUtils').lazyAdd(false, true),
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
