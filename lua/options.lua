vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
vim.o.shell = os.getenv 'SHELL'

vim.o.number = true
vim.o.relativenumber = false

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.fillchars = { eob = " " }
