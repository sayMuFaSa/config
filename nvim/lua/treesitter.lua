local Setup = {
	ensure_installed = { 'python', 'c', 'lua', 'vim', 'vimdoc', 'query', 'go', 'rust' },
	sync_install     = false,
	auto_install     = true,
	ignore_install   = { 'javascript' },
	highlight  = {
		additional_vim_regex_highlighting = false,
		enable = true,
	},
}

require('nvim-treesitter.configs').setup(Setup)
