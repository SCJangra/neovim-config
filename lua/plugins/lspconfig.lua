local lsp = vim.lsp

local lsp_utils = require('utils.lsp')

local servers = {
  lua_ls = function(name)
    require('lazydev').setup {}
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
  require('neoconf').setup {}


  for name, config in pairs(servers) do
    lsp.config(name, config(name) or {})
  end
end

return {
  'neovim/nvim-lspconfig',
  name = 'lspconfig',
  -- For now this is lazy enough
  event = 'BufReadPost',
  dependencies = {
    'saghen/blink.cmp',
    'folke/lazydev.nvim',
    'folke/neoconf.nvim',
  },
  init = function() for name, _ in pairs(servers) do lsp.enable(name) end end,
  config = nvim_lspconfig,
}
