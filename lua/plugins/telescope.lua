local opts = {
  extensions      = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = 'smart_case',       -- or "ignore_case" or "respect_case". The default case_mode is "smart_case"
    },
  },
  extensions_list = { 'fzf' },
  defaults        = {
    prompt_prefix      = '   ',
    selection_caret    = '  ',
    entry_prefix       = '  ',
    selection_strategy = 'reset',
    sorting_strategy   = 'ascending',
    layout_strategy    = 'horizontal',
    layout_config      = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
  }
}

local keys = {
  { '<leader>f',  '<CMD>Telescope find_files<CR>', desc = 'Find files' },
  { '<leader>st', '<CMD>Telescope live_grep<CR>',  desc = 'Text' },
  { '<leader>sh', '<CMD>Telescope highlights<CR>', desc = 'Highlights' },
  { '<leader>sp', '<CMD>Telescope resume<CR>',     desc = 'Resume previous search' },
  {
    '<leader>sg',
    function()
      vim.ui.input({ prompt = 'Enter grep text', center = true }, function(input)
        if not input then return end
        require('telescope.builtin').grep_string { search = input }
      end)
    end,
    desc = 'Grep string'
  }
}

return {
  'nvim-telescope/telescope.nvim',
  opts = opts,
  keys = keys,
  dependencies = { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
}
