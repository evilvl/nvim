return {
  'stevearc/oil.nvim',
  enabled = require('nixCatsUtils').lazyAdd(true,true),
  event = "VeryLazy",
  opts = {
 skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
}
