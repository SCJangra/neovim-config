local opts = {
  status = {
    recent_commit_count = 20,
  },
  integrations = {
    diffview = true,
  },
}

return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  opts = opts,
  keys = {
    { '<leader>g', '<CMD>lua require("neogit").open()<CR>', desc = 'Neogit' },
  },
}
