return {
  -- file tree plugin
  "nvim-tree/nvim-tree.lua",
  requires = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({})
  end
}
