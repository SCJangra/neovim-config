-- { '🮇', 'FloatBorder' },     -- Right One Quarter Block
-- { '▎',  'FloatBorder' }     -- Left One Quarter Block
local border = {
  { ' ',    'FloatTitle' },
  { ' ',    'FloatTitle' },
  { ' ',    'FloatTitle' },
  { '🮈', 'FloatBorder' },     -- Right Three Eighth Block
  { '▔',  'FloatBorderBottom' }, -- Upper One Eighth Block
  { '▔',  'FloatBorderBottom' }, -- Upper One Eighth Block
  { '▔',  'FloatBorderBottom' }, -- Upper One Eighth Block
  { '▍',  'FloatBorder' },     -- Left Three Eighth Block
}

local win_options = {
  winblend = 0,
  cursorline = false,
}

local override = function(conf)
  conf.border = border
  return conf
end

local options = {}

options.select = {
  backend = { 'builtin' },
  builtin = {
    win_options = win_options,
    override = override,
  },
  get_config = function(opts)
    if opts.kind == 'codeaction' then
      return {
        builtin = {
          relative = 'cursor',
        },
      }
    end
  end,
}

options.input = {
  insert_only = false,
  win_options = win_options,
  override = override,
  get_config = function(opts)
    if opts.center then return { relative = 'win' } end
  end,
}

return {
  'stevearc/dressing.nvim',
  event = 'VeryLazy',
  opts = options,
}
