return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      local function my_on_attach(bufnr)
        local api = require 'nvim-tree.api'

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- copy default mappings here from defaults in next section
        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts 'Open')
        vim.keymap.set('n', 'l', api.node.open.edit, opts 'Open')
      end

      require('nvim-tree').setup {
        on_attach = my_on_attach,
        hijack_cursor = true,
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 55,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
      }
    end,
  },
}
