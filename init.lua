require("keymaps")
require("options")
require("autocommands")

if require('nixCatsUtils').isNixCats then
  local allPlugins = require('nixCats').pawsible.allPlugins
  pluginList = require('nixCatsUtils.lazyCat').mergePluginTables(allPlugins.start, allPlugins.opt)

  nixLazyPath = allPlugins.start[ [[lazy.nvim]] ]
end
-- NOTE: nixCats: You might want to move the lazy-lock.json file
local function getlockfilepath()
  if require('nixCatsUtils').isNixCats and type(require('nixCats').settings.unwrappedCfgPath) == 'string' then
    return require('nixCats').settings.unwrappedCfgPath .. '/lazy-lock.json'
  else
    return vim.fn.stdpath 'config' .. '/lazy-lock.json'
  end
end
local lazyOptions = {
  lockfile = getlockfilepath(),
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}

-- [[ Configure and install plugins ]]
-- NOTE: Here is where you install your plugins.
-- NOTE: nixCats: this the lazy wrapper.
require('nixCatsUtils.lazyCat').setup(pluginList, nixLazyPath, {
  { import = 'plugins' },
}, lazyOptions)
