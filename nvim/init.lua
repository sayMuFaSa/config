M = {
	'options',
	'plugins',
	'treesitter',
	'toggle_term',
	'nvim_tree',
	'comment',
	'mappings',
}

for k,v in pairs(M) do
	require(v)
end
