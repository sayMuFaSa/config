local o = vim.o
local g = vim.g

o.termguicolors      = true
o.number             = true
o.scrolloff          = 3
o.clipboard          = 'unnamedplus'
o.guicursor          = 'n-i-v-c:blockCur-Cursor'
g.loaded_netrwPlugin = 1
g.loaded_netrw       = 1
g.mapleader          = ' '

vim.cmd 'autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o'
