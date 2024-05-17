vim.cmd('packadd packer.nvim')

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'sindrets/diffview.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'akinsho/toggleterm.nvim'
	use 'numToStr/Comment.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'windwp/nvim-autopairs'

	use {
		'nvim-telescope/telescope.nvim', 
		requires = { {'nvim-lua/plenary.nvim'} },
		tag = '0.1.6',
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
end)

require('nvim-autopairs').setup()
vim.cmd.colorscheme 'gruvbox'
