return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lualine/lualine.nvim'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-vinegar'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- colorschemes
  use 'sainnhe/everforest'
  use 'icymind/NeoSolarized'
  use 'joshdick/onedark.vim'
  use 'junegunn/seoul256.vim'
  use 'morhetz/gruvbox'
  use 'mhartington/oceanic-next'
end)
