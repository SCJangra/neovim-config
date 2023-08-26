local opts = {
  colors = {
    onedark_vivid = {
      bg      = "require('onedarkpro.helpers').darken('bg', 8, 'onedark_vivid')",
      comment = "require('onedarkpro.helpers').darken('comment', 20, 'onedark_vivid')",
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
    CursorLine                  = { bg = '${cursorline}', fg = '${white}' },

    -- Telescope
    TelescopeBorder             = { bg = '${float_bg}', fg = '${float_bg}' },
    TelescopePromptBorder       = { bg = '${cursorline}', fg = '${cursorline}' },
    TelescopePromptNormal       = { link = 'CursorLine' },
    TelescopePromptTitle        = { bg = '${red}', fg = '${bg}' },
    TelescopePreviewTitle       = { bg = '${green}', fg = '${bg}' },
    TelescopeSelection          = { bg = '${cursorline}', fg = '${purple}' },
    TelescopePromptCounter      = { bg = '${cursorline}', fg = '${gray}' },
    TelescopeMatching           = { bold = true, underline = true },

    -- Pmenu
    PmenuSel                    = { bg = '${green}', fg = '${bg}', bold = true },
    PMenuThumb                  = { bg = '${cursorline}' },

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
    FloatTitle                  = { link = 'CursorLine' },
    FloatBorder                 = { bg = '${float_bg}', fg = '${cursorline}' },
    FloatBorderBottom           = { bg = '${bg}', fg = '${cursorline}' }
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
