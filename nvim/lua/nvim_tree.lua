local on_attach = function(bufnr)
	local api = require 'nvim-tree.api'
	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set('n', 'h', api.node.navigate.parent_close, {noremap = true, buffer = bufnr})
	vim.keymap.set('n', 'l', api.node.open.edit,   {noremap = true, buffer = bufnr})
	vim.keymap.set('n', '.', api.tree.toggle_hidden_filter,  {noremap = true, buffer = bufnr})
end

local Setup = {
	hijack_unnamed_buffer_when_opening = true                                                     ,
	sync_root_with_cwd                 = true                                                     ,
	on_attach                          = on_attach                                                ,
	sort_by                            = 'case_sensitive'                                         ,
	renderer                           = {group_empty = true}                                     ,
	filters                            = {dotfiles = true}                                        ,
	view                               = {width = 30, side = 'right'}                             ,
	tab                                = {sync  = {open = true, close = true}}                    ,
}

require('nvim-tree').setup(Setup)
