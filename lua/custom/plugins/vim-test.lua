return {
  {
    'preservim/vimux',
    lazy = false,
  },
  {
    'vim-test/vim-test',
    config = function()
      vim.g['test#strategy'] = 'vimux'
    end,
    vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'),
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>'),
    vim.keymap.set('n', '<leader>a', ':TestSuite<CR>'),
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>'),
    vim.keymap.set('n', '<leader>g', ':TestVisit<CR>'),
  },
}
