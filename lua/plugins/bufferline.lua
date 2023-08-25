local opts = {
  options = {
    indicator = { style = 'none' },
    separator_style = 'slant',
  }
}

local keys = {
  { 'H', '<CMD>BufferLineCyclePrev<CR>', desc = 'Prev buffer' },
  { 'L', '<CMD>BufferLineCycleNext<CR>', desc = 'Next buffer' },
}

return {
  'akinsho/bufferline.nvim',
  event = 'BufReadPost',
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = keys,
  opts = opts,
}
