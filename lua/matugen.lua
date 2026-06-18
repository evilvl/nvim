 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#131313',
    base01 = '#1f1f1f',
    base02 = '#2a2a2a',
    base03 = '#919191',
    base04 = '#c6c6c6',
    base05 = '#e2e2e2',
    base06 = '#e2e2e2',
    base07 = '#e2e2e2',
    base08 = '#ffb4ab',
    base09 = '#b1cfa8',
    base0A = '#d9c4a0',
    base0B = '#f4be48',
    base0C = '#b1cfa8',
    base0D = '#f4be48',
    base0E = '#d9c4a0',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e2e2e2',          bg = '#131313' })
  hi('TelescopeBorder',         { fg = '#919191',             bg = '#131313' })
  hi('TelescopePromptNormal',   { fg = '#e2e2e2',          bg = '#131313' })
  hi('TelescopePromptBorder',   { fg = '#919191',             bg = '#131313' })
  hi('TelescopePromptPrefix',   { fg = '#f4be48',             bg = '#131313' })
  hi('TelescopePromptCounter',  { fg = '#c6c6c6',  bg = '#131313' })
  hi('TelescopePromptTitle',    { fg = '#131313',             bg = '#f4be48' })
  hi('TelescopePreviewTitle',   { fg = '#131313',             bg = '#d9c4a0' })
  hi('TelescopeResultsTitle',   { fg = '#131313',             bg = '#b1cfa8' })
  hi('TelescopeSelection',      { fg = '#e2e2e2',          bg = '#2a2a2a' })
  hi('TelescopeSelectionCaret', { fg = '#f4be48',             bg = '#2a2a2a' })
  hi('TelescopeMatching',       { fg = '#f4be48',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
