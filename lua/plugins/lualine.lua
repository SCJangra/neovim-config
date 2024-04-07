local reg_recording = vim.fn.reg_recording

local recording = function()
  local icon = '󰄄 ' -- 󰟞 
  local reg = reg_recording()

  if reg == '' then
    return reg
  else
    return icon .. reg .. ' '
  end
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  config = function()
    local colors = require('onedarkpro.helpers').get_colors()

    local theme = require 'lualine.themes.onedark_vivid'
    theme.inactive.c.bg = colors.bg
    theme.normal.c.bg = colors.bg

    require('lualine').setup {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        theme = theme,
      },
      sections = {
        lualine_a = {
          {
            'mode',
            color = { gui = 'bold' },
          },
          {
            recording,
            padding = { left = 0 },
            color = { gui = 'bold' },
          },
        },
        lualine_b = {
          {
            'branch',
            icon = '',
          },
          {
            'diff',
            symbols = { added = ' ', deleted = ' ', modified = ' ' },
            padding = { left = 0, right = 1 },
          },
        },
        lualine_c = {
          {
            'filetype',
            icon_only = true,
            padding = { right = 0, left = 1 },
            color = { bg = colors.cursorline },
          },
          {
            'filename',
            color = { bg = colors.cursorline },
            separator = { right = '' },
          },
        },
        lualine_x = {
          {
            'diagnostics',
            color = { bg = colors.cursorline },
            separator = { left = '' },
          },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
