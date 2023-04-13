return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'ms-jpq/coq_nvim'
  -- use {'ms-jpq/coq.artifacts', branch = 'artifacts' }

  use 'nvim-lualine/lualine.nvim'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-vinegar'

  -- colorschemes
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'sainnhe/everforest'
  use 'icymind/NeoSolarized'
  use 'joshdick/onedark.vim'
  use 'junegunn/seoul256.vim'
  use 'morhetz/gruvbox'
  use 'mhartington/oceanic-next'
end)
