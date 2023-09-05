return {
  'nvim-neorg/neorg',
  ft = 'norg',
  cmd = 'Neorg',
  dependencies = 'nvim-lua/plenary.nvim',
  build = ':Neorg sync-parsers',
  opts = {
    load = {
      ['core.defaults'] = {},
      ["core.concealer"] = {},
    }
  },
}
