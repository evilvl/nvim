-- scripts/update_plugins.lua
-- Скрипт для обновления плагинов через lazy.nvim в headless-режиме

-- Ждём загрузку всех плагинов
vim.schedule(function()
  local Lazy = require("lazy")
  Lazy.sync({ wait = true, concurrency = 10 })
  -- Выходим после завершения
  vim.schedule(function()
    vim.cmd("qa!")
  end)
end)
