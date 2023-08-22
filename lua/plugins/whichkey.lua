local opt = vim.opt

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {},
  init = function()
    opt.timeout = ture
    opt.timeoutlen = 300
  end
}
