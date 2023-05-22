return {
  "nvim-telescope/telescope.nvim",
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
      -- dalton added custom config to search through hidden files
      pickers = {
        find_files = {
          hidden = true
        },
        -- searches through hidden files, such as .gitlab-ci.yml
        grep_string = {
          additional_args = function(opts)
            return { "--hidden" }
          end
        },
        -- searches through hidden files, such as .gitlab-ci.yml
        live_grep = {
          additional_args = function(opts)
            return { "--hidden" }
          end
        },
      },
    }
  end,
}
