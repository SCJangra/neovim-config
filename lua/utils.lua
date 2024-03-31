local api = vim.api
local fn = vim.fn
local opt = vim.opt

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

M.visual_text = function()
  local mode = vim.fn.mode()

  if mode ~= 'v' and mode ~= 'V' then
    api.nvim_command('gv')
  end

  api.nvim_command('"vy')

  fn.getreg('v')
end

M.update_font_size = function(val)
  local all_fonts = opt.guifont:get()
  local len = #all_fonts

  local last_font = all_fonts[len]
  local parts = vim.split(last_font, ':h')
  parts[2] = parts[2] + val

  if parts[2] < 0 then return end

  last_font = table.concat(parts, ':h')

  all_fonts[len] = last_font

  opt.guifont = all_fonts
end

M.invert_color = function(color)
  local red = tonumber(string.sub(color, 2, 3), 16)
  local green = tonumber(string.sub(color, 4, 5), 16)
  local blue = tonumber(string.sub(color, 6, 7), 16)

  red = red * -1 + 255
  green = green * -1 + 255
  blue = blue * -1 + 255

  return table.concat({
    '#',
    string.format('%x', red),
    string.format('%x', green),
    string.format('%x', blue),
  })
end

return M
