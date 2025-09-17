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

-- Undo
vim.keymap.set({ 'n', 'v', 'i' }, '<C-z>', '<ESC>u', opts)

-- Redo
vim.keymap.set({ 'n', 'v' }, 'U', '<C-r>', opts)

-- Paste without replacing a value in the clipboard
vim.keymap.set({ 'v' }, '<leader>p', '"_dP', opts)

vim.keymap.set('n', '<M-Tab>', '<CMD>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal theme=ivy<CR>', { noremap = true, silent = true })

vim.keymap.set({ 'n', 'v' }, '\\', '<CMD>NvimTreeFindFileToggle!<CR>', opts)

-- Go to Beginning/End of the line
vim.keymap.set({ 'n', 'v' }, 'H', '^', opts)
vim.keymap.set({ 'n', 'v' }, 'L', '$', opts)

-- write file in current directory
-- :w %:h/<new-file-name>
vim.keymap.set('n', '<C-n>', ':w %:h/', opts)

-- Copy current file path into the clipboard
vim.keymap.set('n', '<C-y>f', ":let @+=expand('%')<CR>", opts)
