-- Breadcrumbs is a plugin that works with nvim-navic to provide context about your code in the winbar.
-- https://github.com/LunarVim/breadcrumbs.nvim

local M = {
  'LunarVim/breadcrumbs.nvim',
  dependencies = {
    { 'SmiteshP/nvim-navic' },
  },
}

function M.config()
  require('breadcrumbs').setup()
end

return M
