vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  -- file tree plugin
  -- "nvim-tree/nvim-tree.lua",
  "nvim-neo-tree/neo-tree.nvim",
  version = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
    -- map toggling file tree
    vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { silent = true })
  end,
}
