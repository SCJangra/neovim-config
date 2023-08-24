local opts = {
  signs                   = {
    add          = { text = '▌' },
    change       = { text = '▌' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '🮌' },
  },
  word_diff               = false,
  current_line_blame      = true,
  current_line_blame_opts = {
    delay = 100,
  }
}

return {
  'lewis6991/gitsigns.nvim',
  event = 'BufReadPost',
  opts = opts,
}
