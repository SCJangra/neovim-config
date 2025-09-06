return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufReadPost',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = 'all',
      highlight = { enable = true },
      indent = { enable = true },
      -- These are having difficulty installing, so I've temporarily disabled them.
      ignore_install = { 'ipkg' },
    }
  end
}
