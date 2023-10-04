local keys = {
  { '<C-l>', '<CMD>lua require("luasnip").jump(1)<CR>',  desc = 'Luasnip jump next', mode = 'i' },
  { '<C-h>', '<CMD>lua require("luasnip").jump(-1)<CR>', desc = 'Luasnip jump prev', mode = 'i' },
  { '<C-l>', '<CMD>lua require("luasnip").jump(1)<CR>',  desc = 'Luasnip jump next', mode = 's' },
  { '<C-h>', '<CMD>lua require("luasnip").jump(-1)<CR>', desc = 'Luasnip jump prev', mode = 's' }
}

local config = function()
  require("luasnip.loaders.from_vscode").lazy_load()
end

return {
  'L3MON4D3/LuaSnip',
  keys = keys,
  config = config,
  dependencies = 'rafamadriz/friendly-snippets',
}
