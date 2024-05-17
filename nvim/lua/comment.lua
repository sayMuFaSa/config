local Setup = {
	toggler = {
		line = '<leader>/',
		block = '<leader>?',
	},
	opleader = {
		line = '<leader>/',
		block = '<leader>?',
	},
	mappings = {
		basic = true,
		extra = false,
	},
}

require('Comment').setup(Setup)
