return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip'
  },
  config = function(_, opts)
    local cmp = require 'cmp'

    opts.sources = cmp.config.sources {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
    }

    cmp.setup(opts)
  end,
  opt = {
    snippet = {
      expand = function(args) require('luasnip').lsp_expand(args.body) end,
    }
  }
}