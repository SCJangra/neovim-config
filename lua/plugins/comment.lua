local opts = {
  mappings = {
    basic = false,
    extra = false,
  }
}

local keys = {
  {
    '<leader>/',
    function() require('Comment.api').toggle.linewise.current() end,
    mode = 'n',
    desc = 'Toggle comment'
  },
  {
    '<leader>/',
    function()
      vim.api.nvim_input '<ESC>'
      vim.schedule(function() require('Comment.api').toggle.linewise(vim.fn.visualmode()) end)
    end,
    mode = 'v',
    desc = 'Toggle comment'
  },
}

return {
  'numToStr/Comment.nvim',
  keys = keys,
  opts = opts,
}
