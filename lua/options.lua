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
