-- scripts/ci_update.lua
-- Отдельный init для CI — загружает lazy.nvim и обновляет плагины

-- Bootstrap lazy.nvim (копия из config/lazy.lua)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		print("Failed to clone lazy.nvim:\n" .. out)
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Загружаем lazy.nvim и настраиваем
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = { enabled = false }, -- отключаем checker для CI
	rocks = { enabled = false },
})

-- После загрузки всех плагинов — обновляем
vim.schedule(function()
	require("lazy").sync({ wait = true })
	vim.schedule(function()
		vim.cmd("qa!")
	end)
end)
