local opts = {
  colors = {
    onedark_vivid = {
      bg = "require('onedarkpro.helpers').darken('bg', 8, 'onedark_vivid')"
    }
  },
  styles = {
    keywords = 'bold,italic',
    conditionals = 'bold,italic',
    comments = 'italic',
    methods = 'bold',
    functions = 'bold',
  }
}

return {
  'olimorris/onedarkpro.nvim',
  lazy = false,
  opts = opts,
  config = function(_, o)
    require('onedarkpro').setup(o)
    vim.cmd('colorscheme onedark_vivid')
  end,
}
