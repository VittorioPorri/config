vim.opt.completeopt = {'menuone','noselect','noinsert','preview'}
vim.opt.shortmess = vim.opt.shortmess + { c  = true }

local cmp = require'cmp'

cmp.setup({
	--Configurations
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 3 },	
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lua', keyword_length = 2 },
		{ name = 'baffer', keyword_length = 2 },
		{ name = 'vsnip', keyword_length = 2 },
	},
	-- Window for styling
	window ={
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	--Formatting
	formatting = {
		fields = {'menu','abbr','kind'},
		format = function(entry,item)
			local menu_icon = {
				nvim_lsp = 'ł',
				vsip = '»',
				buffer = 'ß',
				path = 'þ'
			};
			item.menu=menu_icon[entry.source.name]
			return item
			end,
	},

	-- Mapping keyboard shortcut
	mapping = {
		-- Shif+TAB go to previus suggest item
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		-- TAB to go the next item
		['<Tab>'] = cmp.mapping.select_next_item(),
		-- CTRL+SPACE to brig up the code completion at current cursor 
		['<C-Space>'] = cmp.mapping.complete(),	
		-- CTRL+e closes the suggestion tab
		['<C-e>'] = cmp.mapping.close(),
		--Enter to confirm and apply
		['S-CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
	}
})
