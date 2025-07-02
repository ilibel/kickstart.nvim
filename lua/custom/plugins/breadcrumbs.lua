-- Breadcrumbs is a plugin that works with nvim-navic to provide context about your code in the winbar.
-- https://github.com/LunarVim/breadcrumbs.nvim

return {
  {
    'LunarVim/breadcrumbs.nvim',
    dependencies = {
      { 'SmiteshP/nvim-navic' },
    },
    config = function()
      require('nvim-navic').setup {
        lsp = {
          auto_attach = true,
        },
      }

      require('breadcrumbs').setup()
    end,
  },
}
