return {
  'saecki/crates.nvim',
  tag = 'stable',
  event = 'BufRead Cargo.toml',
  opts = {
    thousands_separator = ",",
    lsp = {
      enabled = true,
      actions = true,
      completion = true,
      hover = true,
      on_attach = function(_, bufnr) require('utils.lsp').setup_keymspa(bufnr) end
    }
  },
}
