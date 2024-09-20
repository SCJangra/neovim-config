local opt, g = vim.opt, vim.g

-- Mapleader MUST be set before loading mappings
g.mapleader = ','

opt.number = true
opt.whichwrap = '<,>,[,],b,s'
opt.scrolloff = 10
opt.conceallevel = 2
opt.clipboard = '' -- Reemove clipboard options

-- Indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true

opt.spelllang = 'en_us'
opt.spell = true

-- Set global status line
opt.laststatus = 3

-- Cmdline
opt.cmdheight = 0

opt.signcolumn = "yes"

g.fold_ignore_ft = { 'neo-tree', 'Neogit', 'help', 'noice', 'Telescope' }

-- Neovide
if g.neovide then
  opt.guifont = { 'Iosevka SCJ', 'Symbols Nerd Font:h14' }
  g.neovide_scroll_animation_length = 0.1
  g.neovide_position_animation_length = 0.1
  g.neovide_transparency = 1
  g.neovide_floating_shadow = false
end

-- Diagnostics
vim.fn.sign_define('DiagnosticSignError', { text = '🦀', texthl = 'DiagnosticSignError', linehl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn', linehl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo', linehl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '󰛨 ', texthl = 'DiagnosticSignHint', linehl = 'DiagnosticSignHint' })
vim.diagnostic.config { severity_sort = true }
