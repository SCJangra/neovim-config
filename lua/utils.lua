local format = true

local M = {}

M.setup_auto_format = function(client, bufnr)
  if client.supports_method 'textDocument/formatting' then
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = bufnr,
      callback = function()
        if format then
          vim.lsp.buf.format { buffer = bufnr }
        end
      end,
    })

    vim.keymap.set('n', '<leader>lf', function()
      format = not format

      if format then
        print 'Auto format turned on!'
      else
        print 'Auto format turned off!'
      end
    end, { desc = 'Toggle auto format', buffer = bufnr })
  end
end

M.tbl_contains_match = function(tbl, str)
  for _, m in ipairs(tbl) do
    local sub = str:sub(1, #m)

    if sub == m then return true end
  end

  return false
end

return M
