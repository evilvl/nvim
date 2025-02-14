return {
  "neovim/nvim-lspconfig",
  enabled= require('nixCatsUtils').lazyAdd(true,true),
  dependencies = {
    {
      'j-hui/fidget.nvim',
      opts = {
        progress = {
          display = {
            done_icon = '✓', -- Icon shown when all LSP progress tasks are complete
          },
        },
      },
    }
  },
  servers = {
    lua_ls = {
        -- cmd = {...},
        -- filetypes { ...},
        -- capabilities = {},
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          workspace = {
            checkThirdParty = false,
            -- Tells lua_ls where to find all the Lua files that you have loaded
            -- for your neovim configuration.
            library = {
              '${3rd}/luv/library',
              unpack(vim.api.nvim_get_runtime_file('', true)),
            },
            -- If lua_ls is really slow on your computer, you can try this instead:
            -- library = { vim.env.VIMRUNTIME },
          },
          completion = {
            callSnippet = 'Replace',
          },
          telemetry = { enable = false },
          diagnostics = { disable = { 'missing-fields' } },
        },
      },
    },
  }
}
