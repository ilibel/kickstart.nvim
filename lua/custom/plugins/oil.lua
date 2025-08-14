return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        default_file_explorer = false,
        columns = {
          'icon',
          -- 'size',
          -- 'mtime',
          -- 'permissions',
        },
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ['g?'] = { 'actions.show_help', mode = 'n' },
          ['<CR>'] = 'actions.select',
          ['l'] = { 'actions.select', mode = 'n' },
          ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
          ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
          ['<C-t>'] = { 'actions.select', opts = { tab = true } },
          ['<C-p>'] = 'actions.preview',
          ['<C-c>'] = { 'actions.close', mode = 'n' },
          ['<C-l>'] = 'actions.refresh',
          ['-'] = { 'actions.parent', mode = 'n' },
          ['h'] = { 'actions.parent', mode = 'n' },
          ['_'] = { 'actions.open_cwd', mode = 'n' },
          ['`'] = { 'actions.cd', mode = 'n' },
          ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
          ['gs'] = { 'actions.change_sort', mode = 'n' },
          ['gx'] = 'actions.open_external',
          ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
          ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
        },
      }

      -- Open parent directory in current window
      -- vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
  },
}
