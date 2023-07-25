local set = vim.keymap.set

-- Window movement
set('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
set('n', '<C-l>', '<C-w>l', { desc = 'Window right' })
set('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
set('n', '<C-k>', '<C-w>k', { desc = 'Window up' })

-- Nvim
set('n', '<leader>c', '<CMD>bd<CR>', { desc = 'Close buffer' })
set('n', '<leader>h', '<CMD>noh<CR>', { desc = 'Clear highlight' })
set('n', '<leader>q', '<CMD>q<CR>', { desc = 'Close window' })
set('n', '<leader>w', '<CMD>w<CR>', { desc = 'Save file' })
