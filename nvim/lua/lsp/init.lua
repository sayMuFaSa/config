local nvim = require("neodev")
local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')
local cmp = require('cmp')

function lsp_start()
	lsp.preset("recommended")

	----------------------------- Autocompletion ---------------------------------------------------------

	cmp.setup({
		window = {
			completion = cmp.config.window.bordered()
		},

		snippet = {
			-- REQUIRED - you must specify a snippet engine
			expand = function(args)
				require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				-- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
			end
		},

		mapping = {


			--------------------------------------- Mappings ------------------------------------

			['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
			['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

			['<CR>'] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = false,
			}),

			['<C-e>'] = cmp.mapping({
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			})
			-------------------------------------------------------------------------------------

		},
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' }, -- For luasnip users.
			-- { name = 'vsnip' }, -- For vsnip users.
			-- { name = 'ultisnips' }, -- For ultisnips users.
			-- { name = 'snippy' }, -- For snippy users.
		}, {
			{ name = 'buffer' },
		})
	})

	-------------------------------------------------------------------------------------------------------------

	

	lsp.on_attach(function(client, bufnr)

	end)

	------------------------ Language server protocols ---------------------------------------------
	lspconfig.clangd.setup {}

	lspconfig.texlab.setup {}
	
	-- nvim.setup()

	lspconfig.lua_ls.setup {}

	lsp.setup()
	------------------------------------------------------------------------------------------------

	
	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('UserLspConfig', {}),
		callback = function(ev)
			-- Enable completion triggered by <c-x><c-o>
			vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

			-- Buffer local mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local opts = { buffer = ev.buf }
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
			vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set('n', '<space>wl', function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
			vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		end,
	})


	

	vim.cmd(':LspStart')
end


vim.cmd(':command Lsp lua lsp_start()')
