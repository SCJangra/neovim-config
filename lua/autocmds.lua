local api = vim.api

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.wgsl",
  callback = function() vim.bo.filetype = "wgsl" end,
})

api.nvim_create_autocmd('LspAttach', { command = 'setlocal spell' })
