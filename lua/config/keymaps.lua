vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clipboard
vim.o.clipboard = "unnamedplus"

-- Clear search when pressing <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
