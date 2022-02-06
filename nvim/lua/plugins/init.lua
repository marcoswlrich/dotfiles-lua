return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
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
  -- You can alias plugin names
  --use {'dracula/vim', as = 'dracula'}
end)