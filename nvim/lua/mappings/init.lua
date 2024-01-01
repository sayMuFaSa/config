vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', "<leader>e", "<cmd>NvimTreeToggle<CR>", {noremap = true, silent = true})

vim.keymap.set('n', '<leader>f', '<cmd>FZF -e<CR>', {noremap = true, silent = true})

vim.keymap.set('n', "<leader>t", vim.cmd.FloatermNew)

-- Clipboard keymappings
vim.api.nvim_set_keymap('x', '<leader>y', '"+y', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
