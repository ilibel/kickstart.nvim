local opts = { noremap = true, silent = true }

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Move selected line / block of text in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG', opts)

-- write file in current directory
-- :w %:h/<new-file-name>
vim.keymap.set('n', '<C-n>', ':w %:h/', opts)
