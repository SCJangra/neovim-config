local opts = {
  use_popups_for_input = false,
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = 'open_current',
    use_libuv_file_watcher = true,
  },
  window = {
    mappings = {
      ['o'] = 'open',
    },
  },
  source_selector = {
    winbar = true,
  },
}

local keys = {
  { '<leader>e', '<CMD>Neotree toggle<CR>', desc = 'NeoTree' }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = 'Neotree',
  opts = opts,
  keys = keys,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
}
