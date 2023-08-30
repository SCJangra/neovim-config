local opt, g = vim.opt, vim.g

-- Mapleader MUST be set before loading mappings
g.mapleader = ','

opt.number = true
opt.guifont = 'IosevkaSCJ Nerd Font:h14'
opt.whichwrap = '<,>,[,],b,s'
opt.scrolloff = 10
opt.conceallevel = 2
opt.clipboard = '' -- Reemove clipboard options

-- Indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true

-- Set global status line
opt.laststatus = 3

opt.signcolumn = "yes"

g.fold_ignore_ft = { 'neo-tree', 'Neogit', 'help' }

-- Diagnostics 🦀
vim.fn.sign_define('DiagnosticSignError', { text = '🦀', texthl = 'DiagnosticSignError', linehl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn', linehl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo', linehl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '󰛨 ', texthl = 'DiagnosticSignHint', linehl = 'DiagnosticSignHint' })
