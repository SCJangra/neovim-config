return {
  'Everblush/nvim',
  name = 'everblush',
  lazy = false,
  config = function(_, opts)
    require('everblush').setup(opts)
    vim.cmd[[ colorscheme everblush ]]
  end,
  opts = {}
}
