-- disable netrw at the very start of init.lua, strongly advised from nvim-tree scroll_docs
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPugin = 1

-- note: this might not be needed now that there is lua/kickstart/plugins/autoformat.lua
-- always try to execute lsp formatting on write
-- credit: https://www.jvt.me/posts/2022/03/01/neovim-format-on-save/
--vim.api.nvim_create_autocmd('BufWritePre', {
--command = [[lua vim.lsp.buf.format()]],
--pattern = "*",
--})

-- search
-- vim.o.hlsearch = true
-- vim.o.incsearch = true

-- scroll
vim.o.scrolloff = 8
vim.o.signcolumn = 'yes'
vim.opt.isfname:append '@-@'

-- tab
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- clipboard
-- default to system clipboard
vim.o.clipboard = 'unnamedplus'

-- Relative numbers
vim.wo.relativenumber = true

-- Set colorscheme and other term GUI color stuff
vim.o.termguicolors = true
-- vim.cmd("colorscheme nightfox")

-- map better window navigation
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', { silent = true })

-- additional telescope keybindings
-- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- spelling
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- line wrapping
vim.opt.linebreak = true
vim.opt.textwidth = 80

-- adding WipeReg command to clear the register
vim.cmd [[command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor]]

return {}
