vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("User", {
	pattern = "TelescopePreviewerLoaded",
	callback = function(args)
		vim.wo.wrap = true
		vim.wo.breakindent = false
	end,
})
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.opt.cursorline = true
		vim.cmd("highlight CursorLine cterm=NONE ctermbg=238 gui=NONE")
	end,
})
