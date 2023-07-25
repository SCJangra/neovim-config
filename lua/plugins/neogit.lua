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
  opts = opts,
  keys = {
    { '<leader>g', '<CMD>lua require("neogit").open()<CR>', desc = 'Neogit' }
  }
}
