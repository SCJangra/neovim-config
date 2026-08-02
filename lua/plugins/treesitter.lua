return {
  "romus204/tree-sitter-manager.nvim",
  event = 'BufReadPost',
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    require("tree-sitter-manager").setup {
      auto_install = true;
    }
  end,
}
