-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use {
    'rebelot/kanagawa.nvim',
    as = 'kanagawa',
    config = function()
      vim.cmd 'colorscheme kanagawa'
    end,
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-treesitter/playground'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  -- trouble

  use_rocks 'jsregexp'
  use { 'L3MON4D3/LuaSnip' }
  use { 'rafamadriz/friendly-snippets' }
  use { 'saadparwaiz1/cmp_luasnip' }

  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'windwp/nvim-autopairs' }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use 'simrat39/rust-tools.nvim'
  use 'mfussenegger/nvim-dap'

  use 'feline-nvim/feline.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('session-lens').setup { --[[your custom config--]]
      }
    end,
  }
end)
