vim.cmd 'syntax on'

vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- turn on line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- force utf-8
vim.opt.encoding = 'utf-8'

vim.g.mapleader = ' '

vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- vim.keymap.set('n', '<leader>nh', ':nohl<CR>', {})
