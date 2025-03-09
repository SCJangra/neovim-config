local set = vim.keymap.set
local buf = vim.lsp.buf
local diagnostic = vim.diagnostic

local M = {}

M.setup_keymspa = function(bufnr)
  set('n', 'gD', buf.declaration, { buffer = bufnr, desc = 'LSP declaration' })
  set('n', 'K', buf.hover, { buffer = bufnr, desc = 'LSP hover' })
  set('n', '<leader>lr', buf.rename, { buffer = bufnr, desc = 'Rename' })
  set('n', '<leader>la', buf.code_action, { buffer = bufnr, desc = 'Code action' })
  set('n', '<leader>ll', diagnostic.open_float, { buffer = bufnr, desc = 'Show line diagnostic' })
  set('n', '<leader>lj', diagnostic.goto_next, { buffer = bufnr, desc = 'Next diagnostic' })
  set('n', '<leader>lk', diagnostic.goto_next, { buffer = bufnr, desc = 'Prev diagnostic' })
  set('n', '<leader>lR', '<CMD>LspRestart<CR>', { buffer = bufnr, desc = 'Restart' })
end

M.generic_setup = function(_)
  return {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(_, bufnr) M.setup_keymspa(bufnr) end,
  }
end

return M
