local M = {}

M.plugins = {
  user = {
    -- Your custom plugins can go here
  },
  override = {
    ["nvim-tree/nvim-tree.lua"] = {
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
    },
    ["nvim-telescope/telescope.nvim"] = {
      defaults = {
        file_ignore_patterns = {},
      },
      pickers = {
        find_files = {
          no_ignore = true,
          hidden = true,
        },
      },
    },
  },
}

return M
