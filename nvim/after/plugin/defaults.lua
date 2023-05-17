-- disable netrw at the very start of init.lua, strongly advised from nvim-tree scroll_docs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPugin = 1

-- map toggling file tree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true })

-- always try to execute lsp formatting on write
-- credit: https://www.jvt.me/posts/2022/03/01/neovim-format-on-save/
vim.api.nvim_create_autocmd('BufWritePre', {
  command = [[lua vim.lsp.buf.format()]],
  pattern = "*",
})

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- scroll
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- clipboard
-- default to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Relative numbers
vim.wo.relativenumber = true

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd("colorscheme nightfox")

-- map better window navigation
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', { silent = true })
