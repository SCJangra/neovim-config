local opt = vim.opt

return {
  'folke/which-key.nvim',
  keys = { '<leader>', '<NOP>' },
  opts = {},
  init = function()
    opt.timeout = true
    opt.timeoutlen = 300
  end
}
