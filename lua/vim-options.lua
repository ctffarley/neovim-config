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

vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- send current file name to terminal to set title
-- see :help 'title'
vim.opt.title = true

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile', 'BufWinEnter' }, {
  pattern = { '*.tf', '*.tfvars' },
  callback = function()
    print 'terraform file'
  end,
})

vim.cmd [[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]]
vim.cmd [[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]]
vim.cmd [[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]]
vim.cmd [[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]]
vim.cmd [[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]]

-- Lines don't wrap mid-word
vim.o.linebreak = true
