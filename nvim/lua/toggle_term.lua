local Setup = {
	terminal_mappings = true                       ,
	insert_mappings   = false                      ,
	open_mapping      = '<c-t>'                    ,
	float_opts        = {height = 42, width = 160} ,
	direction         = 'float'                    ,
	autochdir         = true                       ,
}

require('toggleterm').setup(Setup)
