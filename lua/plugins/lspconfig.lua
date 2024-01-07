local set = vim.keymap.set
local diagnostic = vim.diagnostic
local buf = vim.lsp.buf
local utils = require('utils')
local settings = require('plugins.lspconfig.settings')

local setup_keymspa = function(bufnr)
  set('n', 'gD', buf.declaration, { buffer = bufnr, desc = 'LSP declaration' })
  set('n', 'K', buf.hover, { buffer = bufnr, desc = 'LSP hover' })
  set('n', '<leader>lr', buf.rename, { buffer = bufnr, desc = 'Rename' })
  set('n', '<leader>la', buf.code_action, { buffer = bufnr, desc = 'Code action' })
  set('n', '<leader>ll', diagnostic.open_float, { buffer = bufnr, desc = 'Show line diagnostic' })
  set('n', '<leader>lj', diagnostic.goto_next, { buffer = bufnr, desc = 'Next diagnostic' })
  set('n', '<leader>lk', diagnostic.goto_next, { buffer = bufnr, desc = 'Prev diagnostic' })
  set('n', '<leader>lR', '<CMD>LspRestart<CR>', { buffer = bufnr, desc = 'Restart' })
end

local generic_setup = function(name)
  return {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(client, bufnr)
      setup_keymspa(bufnr)
      utils.setup_auto_format(client, bufnr)
      require('lsp_signature').on_attach(nil, bufnr)
    end,
    settings = settings[name],
  }
end

local servers = {
  lua_ls = function(name)
    require('neodev').setup {}
    return generic_setup(name)
  end,
  jsonls = generic_setup,
  rust_analyzer = generic_setup,
  tsserver = generic_setup,
  nil_ls = generic_setup,
  cssls = generic_setup,
  wgsl_analyzer = generic_setup,
}

local nvim_lspconfig = function()
  local lspconfig = require('lspconfig')

  for name, config in pairs(servers) do
    lspconfig[name].setup(config(name) or {})
  end
end

return {
  'neovim/nvim-lspconfig',
  name = 'lspconfig',
  -- For now this is lazy enough
  event = 'BufReadPost',
  dependencies = {
    'nvim-cmp',
    'ray-x/lsp_signature.nvim',
    'folke/neodev.nvim',
  },
  config = nvim_lspconfig
}
