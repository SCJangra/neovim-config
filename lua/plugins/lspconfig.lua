local set = vim.keymap.set
local diagnostic = vim.diagnostic
local buf = vim.lsp.buf

local generic_setup = function()
  set('n', 'gd', buf.definition, { desc = 'LSP definition' })
  set('n', 'gD', buf.declaration, { desc = 'LSP declaration' })
  set('n', 'gi', buf.implementation, { desc = 'LSP implementation' })
  set('n', 'gr', buf.references, { desc = 'LSP references' })
  set('n', 'K', buf.hover, { desc = 'LSP hover' })
  set('n', '<leader>lr', buf.rename, { desc = 'Rename' })
  set('n', '<leader>la', buf.code_action, { desc = 'Code action' })
  set('n', '<leader>ll', diagnostic.open_float, { desc = 'Show line diagnostic' })
  set('n', '<leader>lj', diagnostic.goto_next, { desc = 'Next diagnostic' })
  set('n', '<leader>lk', diagnostic.goto_next, { desc = 'Prev diagnostic' })
  set('n', '<leader>lR', '<CMD>LspRestart<CR>', { desc = 'Restart' })
end

local servers = {
  lua_ls = generic_setup,
  rust_analyzer = generic_setup,
}

local nvim_lspconfig = function ()
  local lspconfig = require('lspconfig')

  for name, config in pairs(servers) do
    lspconfig[name].setup(config() or {})
  end
end

return {
  {
    'neovim/nvim-lspconfig',
    name = 'lspconfig',
    -- For not this is lazy enough
    event = 'BufReadPost',
    dependencies = 'mason-lspconfig',
    config = nvim_lspconfig
  },

  {
    'williamboman/mason-lspconfig.nvim',
    name = 'mason-lspconfig',
    dependencies = 'mason',
    opts = {
      ensure_installed = vim.tbl_keys(servers)
    }
  },

  {
    'williamboman/mason.nvim',
    name = 'mason',
    config = true,
  }
}
