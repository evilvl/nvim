vim.g.mapleader = " "
-- clipboard 
vim.opt.clipboard = 'unnamedplus'
if vim.fn.executable('wl-copy') == 1 then
  vim.g.clipboard = {
    name = 'wl-clipboard',
    copy = {
      ['+'] = 'wl-copy  --no-newline',
      ['*'] = 'wl-copy --no-newline',
    },
    paste = {
      ['+'] = 'wl-paste --no-newline',
      ['*'] = 'wl-paste --no-newline',
    },
  }
end
