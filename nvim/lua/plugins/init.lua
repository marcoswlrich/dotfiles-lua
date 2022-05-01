return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {"catppuccin/nvim", as = "catppuccin"}
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
   use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 
      'kyazdani42/nvim-web-devicons'
  }
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/vim-vsnip-integ'}
  use {'onsails/lspkind-nvim'}
  use {'norcalli/nvim-colorizer.lua'}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }
  use {'glepnir/dashboard-nvim'}
  use {"lukas-reineke/indent-blankline.nvim"}
  use {"akinsho/toggleterm.nvim"}
  use {"terrortylor/nvim-comment"}
  use {'tami5/lspsaga.nvim'}
   use {'jose-elias-alvarez/null-ls.nvim'}
  
  --use {'dracula/vim', as = 'dracula'}
end)
