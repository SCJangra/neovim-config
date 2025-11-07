return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  config = function()
    local options = {
      formatters_by_ft = {
        lua = { 'stylua' },
        rust = { 'rustfmt' },
      },
    }

    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*',
      callback = function(args)
        local ft = vim.bo[args.buf].filetype
        local disable = { nix = true }
        if disable[ft] then return end

        require('conform').format { bufnr = args.buf, lsp_fallback = true }
      end,
    })

    require('conform').setup(options)
  end,
}
