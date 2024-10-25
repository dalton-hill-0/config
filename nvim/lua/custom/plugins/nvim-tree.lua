vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  -- file tree plugin
  "nvim-neo-tree/neo-tree.nvim",
  version = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- auto close
            require("neo-tree.command").execute({ action = "close" })
          end
        },

      },
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_hidden = true, -- only works on Windows for hidden files/directories
          hide_by_name = {
            --"node_modules"
          },
          hide_by_pattern = { -- uses glob style patterns
            ".git",
            --"*.meta",
            --"*/src/*/tsconfig.json",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            --".gitignored",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            --".DS_Store",
            --"thumbs.db"
          },
          never_show_by_pattern = { -- uses glob style patterns
            --".null-ls_*",
          },
        },
        follow_current_file = true, -- This will find and focus the file in the active buffer every
        -- time the current file is changed while the tree is open.
        group_empty_dirs = false,   -- when true, empty folders will be grouped together
        -- open_default, open_current, disabled
        hijack_netrw_behavior = "open_default",
      },
    })
    -- map toggling file tree
    vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { silent = true })
  end,
}
