return {
  -- Add indentation guides even on blank lines
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help indent_blankline.txt`
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    require('ibl').setup({
      scope = {
        char = "▎",
        show_start = false,
        show_end = false,
      },
    })
  end,
}
