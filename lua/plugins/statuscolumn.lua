local opts = {
  ft_ignore = { 'neo-tree', 'Neogit*', 'help' }
}

local config = function(_, o)
  local builtin = require('statuscol.builtin')

  o.segments = {
    { text = { '%s' },                  click = 'v:lua.ScSa' },
    { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
    { text = { builtin.foldfunc, ' ' }, click = 'v:lua.ScFa' },
  }

  require('statuscol').setup(o)
end

return {
  'luukvbaal/statuscol.nvim',
  event = 'VeryLazy',
  opts = opts,
  config = config,
}
