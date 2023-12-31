return require('packer').startup(function(use)
	-- Configuration
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'williamboman/mason.nvim'
	use 'neovim/nvim-lspconfig'	
	-- Plugins for code completion
	use 'hrsh7th/nvim-cmp'	
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	--File exploring
	use{
		'nvim-tree/nvim-tree.lua',
		requires = {'nvim-tree/nvim-web-devicons'}
	}
	use{
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	--Colorscheme
	use "rebelot/kanagawa.nvim"
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	        	ts_update()
         	end,
	}
	--status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	--Indent
	use "lukas-reineke/indent-blankline.nvim"
	--Autopairs
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
    --Dashboard
    use {
        "goolord/alpha-nvim", 
        config = function () require'alpha'.setup(require'alpha.themes.dashboard'.config) end
    } 
 
end)
