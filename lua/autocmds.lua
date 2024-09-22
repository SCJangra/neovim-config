vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.wgsl",
  callback = function() vim.bo.filetype = "wgsl" end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  command = 'setlocal nospell',
})
