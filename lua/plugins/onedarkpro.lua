local opts = {
  colors = {
    onedark_vivid = {
      bg         = "require('onedarkpro.helpers').darken('bg', 8, 'onedark_vivid')",
      bg_light   = "require('onedarkpro.helpers').darken('gray', 28, 'onedark_vivid')",
      bg_lighter = "require('onedarkpro.helpers').darken('gray', 25, 'onedark_vivid')",
      comment    = "require('onedarkpro.helpers').darken('comment', 20, 'onedark_vivid')",
    }
  },
  styles = {
    keywords     = 'bold,italic',
    conditionals = 'bold,italic',
    comments     = 'italic',
    methods      = 'bold',
    functions    = 'bold',
  },
  highlights = {
    -- Telescope
    TelescopeBorder             = { bg = '${float_bg}', fg = '${float_bg}' },
    TelescopePromptBorder       = { bg = '${bg_light}', fg = '${bg_light}' },
    TelescopePromptNormal       = { bg = '${bg_light}', fg = '${white}' },
    TelescopePromptTitle        = { bg = '${red}', fg = '${bg}' },
    TelescopePreviewTitle       = { bg = '${green}', fg = '${bg}' },
    TelescopeSelection          = { bg = '${bg_light}', fg = '${purple}' },
    TelescopePromptCounter      = { bg = '${bg_light}', fg = '${gray}' },

    -- Pmenu
    PmenuSel                    = { bg = '${green}', fg = '${bg}', bold = true },
    PMenuThumb                  = { bg = '${bg_light}' },

    -- Cmp
    CmpItemAbbr                 = { fg = '${gray}' },
    CmpItemAbbrMatch            = { fg = '${white}', bold = true },

    -- GitSigns
    GitSignsAdd                 = { fg = '${green}' },
    GitSignsChange              = { fg = '${gray}' },
    GitSignsDelete              = { fg = '${gray}' },

    -- Signature help
    LspSignatureActiveParameter = { link = 'PmenuSel' },

    -- FloatingWindows
    FloatTitle                  = { bg = '${bg_lighter}', fg = '${white}' },
    FloatBorder                 = { bg = '${float_bg}', fg = '${bg_lighter}' },
    FloatBorderBottom           = { bg = '${bg}', fg = '${bg_lighter}' }
  },
}


return {
  'olimorris/onedarkpro.nvim',
  lazy   = false,
  opts   = opts,
  config = function(_, o)
    require('onedarkpro').setup(o)
    vim.cmd('colorscheme onedark_vivid')
  end,
}
