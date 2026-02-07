-- Tab Settings
vim.o.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations
vim.o.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent

-- Line Wrapping
vim.opt.wrap = true -- Enable line wrapping

-- Shell
vim.o.shell = os.getenv("SHELL") -- Set the shell to the user's default shell

-- Search Settings
vim.opt.hlsearch = false -- Do not highlight all matches on previous search pattern
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search pattern contains uppercase letters

-- Number Settings
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Do not show relative line numbers

-- Cursor Line and Scrolling
vim.opt.cursorline = true -- Highlight the current line
vim.opt.scrolloff = 8 -- Keep 8 lines visible above and below the cursor

-- Mode Display
vim.opt.showmode = false -- Do not show the current mode

-- Indentation
vim.opt.breakindent = true -- Wrap lines at a breakindent

-- Undo File
vim.opt.undofile = true -- Enable persistent undo

-- Diagnostic Column
vim.opt.signcolumn = "yes" -- Always show the sign column

-- Split Behavior
vim.opt.splitright = true -- Place new windows to the right of the current one
vim.opt.splitbelow = true -- Place new windows below the current one

-- Completion
vim.o.completeopt = "menuone,noselect" -- Show completion menu even if there is only one match, do not select the first match automatically

-- GUI Colors
vim.o.termguicolors = true -- Enable true color support

-- Character Space/Escaping
-- vim.opt.list = true        -- Show invisible characters
-- vim.opt.listchars = { tab = '» ', nbsp = '␣' }  -- Define characters for invisible characters

-- Hide Tilde Symbol
vim.opt.fillchars = { eob = " " } -- Replace the tilde symbol at the end of the buffer with a space

-- Encoding
vim.o.encoding = "utf-8" -- Set the character encoding to UTF-8
vim.o.fileencoding = "utf-8" -- Set the file encoding to UTF-8

-- Load dankcolors configuration if the file exists
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    local dankcolors_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
    local stat = vim.loop.fs_stat(dankcolors_path)
    if stat then
      -- Load and execute the dankcolors configuration directly
      local success, result = pcall(dofile, dankcolors_path)
      if success then
        -- Get the plugin configuration and execute it
        local spec = result
        if spec and spec[1] and spec[1].config then
          local config_success, config_result = pcall(spec[1].config)
          if config_success then
            print("Dankcolors configuration executed successfully")
          else
            print("Error executing dankcolors config: " .. tostring(config_result))
          end
        end
      else
        print("Error loading dankcolors.lua: " .. tostring(result))
      end
    else
      print("Dankcolors file not found, using default colors")
    end
  end,
})