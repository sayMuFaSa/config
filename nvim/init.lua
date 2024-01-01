require("plugins")
require("colorscheme.default")
require("lsp")
require("mappings")
require("treesiter")
require("comment")
require("nvim_tree")
-- require("colorizer").setup()

vim.cmd(':set number')
vim.cmd(":set scrolloff=3")
vim.cmd(":set tabstop=4")
vim.cmd(":set softtabstop=4")
vim.cmd(":set shiftwidth=4")
vim.cmd("hi Normal guibg=#1e2226")

-- vim.cmd("hi Normal guibg=#302a30")

vim.cmd[[autocmd VimEnter,InsertEnter * set guicursor=n-v-c:block-Cursor]]
