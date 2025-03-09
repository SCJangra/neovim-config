local lsp_utils = require('utils.lsp')

local servers = {
  lua_ls = function(name)
    require('neodev').setup {
      override = function(_, options)
        options.enabled = true;
        options.runtime = true;
        options.types = true;
        options.plugins = true;
      end
    }
    return lsp_utils.generic_setup(name)
  end,
  jsonls = lsp_utils.generic_setup,
  html = lsp_utils.generic_setup,
  rust_analyzer = lsp_utils.generic_setup,
  ts_ls = lsp_utils.generic_setup,
  nil_ls = lsp_utils.generic_setup,
  cssls = lsp_utils.generic_setup,
  wgsl_analyzer = lsp_utils.generic_setup,
}

local nvim_lspconfig = function()
  local lspconfig = require 'lspconfig'

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
    'folke/neodev.nvim',
  },
  config = nvim_lspconfig,
}
