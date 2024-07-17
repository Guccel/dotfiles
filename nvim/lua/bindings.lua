
local opt = {
  noremap = true,
  silent = true,
}

vim.keymap.set({'n', 'v'}, ' ', '<Nop>', opt)
vim.g.mapleader = ' '

vim.keymap.set({'n', 'v'}, '<leader>W', ':w<cr>', opt)
vim.keymap.set({'n', 'v'}, '<leader>x', ':x<cr>', opt)
vim.keymap.set('n', 'J', ':m+1<cr>==', opt)
vim.keymap.set('n', 'K', ':m-2<cr>==', opt)
vim.keymap.set('v', 'J', ':m \'>+1<cr>gv=gv', opt)
vim.keymap.set('v', 'K', ':m \'<-2<cr>gv=gv', opt)

