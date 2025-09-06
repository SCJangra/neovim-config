local opt, g = vim.opt, vim.g

-- Mapleader MUST be set before loading mappings
g.mapleader = ','
g.maplocalleader = ','

opt.number = true
opt.whichwrap = '<,>,[,],b,s'
opt.scrolloff = 10
opt.conceallevel = 2
opt.clipboard = '' -- Reemove clipboard options

-- Indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.breakindent = true

-- Undo
opt.undofile = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- How new splits should open
opt.splitright = true
opt.splitbelow = true

opt.spelllang = 'en_us'

-- Set global status line
opt.laststatus = 3

-- Cmdline
opt.cmdheight = 0

opt.signcolumn = "yes"

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
opt.confirm = true

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
opt.timeoutlen = 300

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
vim.diagnostic.config {
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = ' ',
      [vim.diagnostic.severity.WARN] = ' ',
      [vim.diagnostic.severity.INFO] = ' ',
      [vim.diagnostic.severity.HINT] = '󰛨 ',
    }
  }
}
