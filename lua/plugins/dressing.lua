local api = vim.api

local float_title = 'FloatTitle'
local float_border = 'FloatBorder'
local float_border_bottom = 'FloatBorderBottom'
local float_border_bottom_alt = 'FloatBorderBottomAlt'

local border = {}
border[1] = { ' ', float_title };
border[2] = { ' ', float_title };
border[3] = { ' ', float_title };
border[4] = { '🮈', float_border };
border[5] = { '▔', float_border_bottom };
border[6] = { '▔', float_border_bottom };
border[7] = { '▔', float_border_bottom };
border[8] = { '▍', float_border };

local win_options = {
  winblend = 0,
  cursorline = false,
}

local override = function(conf)
  if api.nvim_buf_get_option(0, 'filetype') == 'neo-tree' then
    border[5] = { '▔', float_border_bottom_alt };
    border[6] = { '▔', float_border_bottom_alt };
    border[7] = { '▔', float_border_bottom_alt };
  else
    border[5] = { '▔', float_border_bottom };
    border[6] = { '▔', float_border_bottom };
    border[7] = { '▔', float_border_bottom };
  end

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
