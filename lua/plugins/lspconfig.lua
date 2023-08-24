local set = vim.keymap.set
local diagnostic = vim.diagnostic
local buf = vim.lsp.buf
local utils = require('utils')

local generic_setup = function()
  set('n', 'gD', buf.declaration, { desc = 'LSP declaration' })
  set('n', 'K', buf.hover, { desc = 'LSP hover' })
  set('n', '<leader>lr', buf.rename, { desc = 'Rename' })
  set('n', '<leader>la', buf.code_action, { desc = 'Code action' })
  set('n', '<leader>ll', diagnostic.open_float, { desc = 'Show line diagnostic' })
  set('n', '<leader>lj', diagnostic.goto_next, { desc = 'Next diagnostic' })
  set('n', '<leader>lk', diagnostic.goto_next, { desc = 'Prev diagnostic' })
  set('n', '<leader>lR', '<CMD>LspRestart<CR>', { desc = 'Restart' })

  return {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(client, bufnr)
      utils.setup_auto_format(client, bufnr)
      require('lsp_signature').on_attach(nil, bufnr)
    end
  }
end

local servers = {
  lua_ls = generic_setup,
  jsonls = generic_setup,
  rust_analyzer = generic_setup,
}

local nvim_lspconfig = function()
  local lspconfig = require('lspconfig')

  for name, config in pairs(servers) do
    lspconfig[name].setup(config() or {})
  end
end

return {
  'neovim/nvim-lspconfig',
  name = 'lspconfig',
  -- For now this is lazy enough
  event = 'BufReadPost',
  dependencies = { 'nvim-cmp', 'ray-x/lsp_signature.nvim' },
  config = nvim_lspconfig
}
