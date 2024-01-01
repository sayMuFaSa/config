vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {'wbthomason/packer.nvim'}

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
	use "folke/neodev.nvim"
	------------------------------------------------------------



	--------------- Colorschemes -------------------------------
	use {"rebelot/kanagawa.nvim", as = 'kanagawa'}
	use {'decaycs/decay.nvim', as = 'decay'}
	use "VDuchauffour/neodark.nvim"
	use 'Mofiqul/vscode.nvim'
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	---------------------------------------------------------------	



	use 'voldikss/vim-floaterm'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}



	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-tree/nvim-web-devicons' -- install nerd-fonts package also 

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'fneu/breezy'

	use 'daschw/leaf.nvim'

end)


