return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { '<leader>lt', '<CMD>Trouble<CR>',                     desc = 'Show workspace diagnostics' },
    { 'gd',         '<CMD>Trouble lsp_definitions<CR>',     desc = 'Go to definition' },
    { 'gi',         '<CMD>Trouble lsp_implementations<CR>', desc = 'Go to implementation' },
    { 'gr',         '<CMD>Trouble lsp_references<CR>',      desc = 'Go to references' },
  },
  opts = {},
}
