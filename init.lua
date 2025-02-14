-- Load configuration modules
require("core.options")
require("core.keymaps")
require("core.autocommands")
-- Check if running under nixCats
if require('nixCatsUtils').isNixCats then
  local allPlugins = require('nixCats').pawsible.allPlugins
  local pluginList = require('nixCatsUtils.lazyCat').mergePluginTables(allPlugins.start, allPlugins.opt)
  local nixLazyPath = allPlugins.start[ [[lazy.nvim]] ]
end

-- Function to determine the path to the lazy-lock.json file
local function getLockfilePath()
  if require('nixCatsUtils').isNixCats and type(require('nixCats').settings.unwrappedCfgPath) == 'string' then
    return require('nixCats').settings.unwrappedCfgPath .. '/lazy-lock.json'
  else
    return vim.fn.stdpath 'config' .. '/lazy-lock.json'
  end
end


-- Configuration options for lazy.nvim
local lazyOptions = {
  lockfile = getLockfilePath(),
}

-- Setup lazy.nvim with the merged plugin list and options
require('nixCatsUtils.lazyCat').setup(pluginList, nixLazyPath, {
  { import = 'plugins' },
}, lazyOptions)
