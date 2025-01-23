-- tab
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
-- wrap line
vim.opt.wrap = true
-- shell
vim.o.shell = os.getenv 'SHELL'
-- search
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- number
vim.o.number = true
vim.o.relativenumber = false
-- hl cursorline/scrolloff
vim.opt.cursorline = true
vim.opt.scrolloff = 8
-- hide mode
vim.opt.showmode = false
-- indent line
vim.opt.breakindent = true
-- enable undo file
vim.opt.undofile = true
-- diagnostic column
vim.opt.signcolumn = 'yes'
-- split
vim.opt.splitright = true
vim.opt.splitbelow = true
-- complete
vim.o.completeopt = 'menuone,noselect'
-- gui colors
vim.o.termguicolors = true
-- char space/escape
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', nbsp = '␣' }
-- hide ~ simbol
vim.opt.fillchars = { eob = " " }
-- format
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
