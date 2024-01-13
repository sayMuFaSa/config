vim.cmd('packadd packer.nvim')

require('packer').startup(function(use)
	
	----------- Packer itself ------------------------------
	use {'wbthomason/packer.nvim'}
	--------------------------------------------------------



	----------- Lsp and completion ---------------------------
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use 'folke/neodev.nvim'
	------------------------------------------------------------



	--------------- Colorschemes -------------------------------
	use {'rebelot/kanagawa.nvim', as = 'kanagawa'}
	use {'decaycs/decay.nvim', as = 'decay'}
	use "VDuchauffour/neodark.nvim"
	use 'Mofiqul/vscode.nvim'
	use 'daschw/leaf.nvim'
	use 'Mofiqul/dracula.nvim'
	use 'AxelGard/oneokai.nvim'
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	---------------------------------------------------------------	


	use 'voldikss/vim-floaterm'

	use 'numToStr/Comment.nvim'

	use	'windwp/nvim-autopairs'

	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-tree/nvim-web-devicons' -- install nerd-fonts package also 

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use 'sindrets/diffview.nvim'
end)



