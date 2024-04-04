local opts = {
  lsp = {
    override = {
      ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
      ['vim.lsp.util.stylize_markdown'] = true,
      ['cmp.entry.get_documentation'] = true,
    },
  },
  views = {
    cmdline_popup = {
      position = { row = 5, col = '50%' },
      size = { width = 60, height = 'auto' },
    },
    popupmenu = {
      relative = 'editor',
      border = { style = 'rounded' },
      position = { row = 8, col = '50%' },
      size = { width = 60, height = 10 },
      win_options = {
        winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
      },
    },
  },
}

return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = opts,
  dependencies = 'MunifTanjim/nui.nvim',
}
