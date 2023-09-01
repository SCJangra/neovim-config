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
    CursorLine                  = { bg = '${cursorline}' },

    -- Telescope
    TelescopeBorder             = { bg = '${float_bg}', fg = '${float_bg}' },
    TelescopePromptBorder       = { bg = '${cursorline}', fg = '${cursorline}' },
    TelescopePromptNormal       = { bg = '${cursorline}' },
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
    FloatTitle                  = { bg = '${red}', fg = '${bg}', bold = true },
    FloatBorder                 = { bg = '${float_bg}', fg = '${red}' },
    FloatBorderBottom           = { bg = '${bg}', fg = '${red}' },
    FloatBorderBottomAlt        = { bg = '${cursorline}', fg = '${red}' },

    -- NeoTree
    NeoTreeNormal               = { bg = '${cursorline}' },
    NeoTreeNormalNC             = { link = 'NeoTreeNormal' },
    NeoTreeWinSeparator         = { fg = '${bg}' },
    NeoTreeTabActive            = { bg = '${cursorline}', bold = true, italic = true },
    NeoTreeTabSeparatorActive   = { bg = '${cursorline}', fg = '#0a0a0a' },

    -- Diagnostics
    DiagnosticSignOk            = { link = 'DiagnosticOk' },
    DiagnosticSignHint          = { link = 'DiagnosticHint' },
    DiagnosticSignInfo          = { link = 'DiagnosticInfo' },
    DiagnosticSignWarn          = { link = 'DiagnosticWarn' },
    DiagnosticSignError         = { link = 'DiagnosticError' },

    DiagnosticFloatingOk        = { link = 'DiagnosticOk' },
    DiagnosticFloatingHint      = { link = 'DiagnosticHint' },
    DiagnosticFloatingInfo      = { link = 'DiagnosticInfo' },
    DiagnosticFloatingWarn      = { link = 'DiagnosticWarn' },
    DiagnosticFloatingError     = { link = 'DiagnosticError' },

    -- DiagnosticUnderlineOk       = {},
    -- DiagnosticUnderlineHint     = { underdotted = true },
    -- DiagnosticUnderlineInfo     = { underdashed = true },
    -- DiagnosticUnderlineWarn     = { underline = true },
    -- DiagnosticUnderlineError    = { undercurl = true },

    DiagnosticVirtualTextOk     = { link = 'DiagnosticOk' },
    DiagnosticVirtualTextHint   = { link = 'DiagnosticHint' },
    DiagnosticVirtualTextInfo   = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextWarn   = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextError  = { link = 'DiagnosticError' },
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
