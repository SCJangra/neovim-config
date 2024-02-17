local set = vim.keymap.set
local g = vim.g
local ui = vim.ui
local api = vim.api

local utils = require('utils')

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
set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Switch tabs
set('n', '<A-h>', '<CMD>tabprevious<CR>', { desc = 'Prev tab' })
set('n', '<A-l>', '<CMD>tabnext<CR>', { desc = 'Next tab' })

-- Package Managers
set('n', '<leader>Ls', '<CMD>Lazy show<CR>', { desc = 'Show packages' })
set('n', '<leader>LS', '<CMD>Lazy sync<CR>', { desc = 'Sync packages' })

-- Run commands in terminal
local command = ''
local term_command = function()
  ui.input({ prompt = 'Enter command:', default = command, center = true }, function(input)
    if not input or input == '' then
      return
    end

    command = input

    api.nvim_command('terminal ' .. command)
  end)
end
set('n', '<leader>x', term_command, { desc = 'Terminal command' })

-- Copy/Paste
set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to clipboard' })
set({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste after from clipboard' })
set({ 'n', 'v' }, '<leader>P', '"+P', { desc = 'Paste before from clipboard' })

-- Quick fix
set('n', '<C-n>', '<CMD>cnext<CR>', { desc = 'Next quick fix item' })
set('n', '<C-p>', '<CMD>cprevious<CR>', { desc = 'Previous quick fix item' })

-- Neovide
if g.neovide then
  set('n', '<C-=>', function() utils.update_font_size(2) end, { desc = 'Increase font size' })
  set('n', '<C-->', function() utils.update_font_size(-2) end, { desc = 'Decrease font size' })
end
