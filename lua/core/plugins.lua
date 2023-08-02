local ensure_packer = function()
   local fn = vim.fn
   local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
   if fn.empty(fn.glob(install_path)) > 0 then
      fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
      vim.cmd [[packadd packer.nvim]]
      return true
   end
   return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
   -- packer
   use 'wbthomason/packer.nvim'

   -- colorscheme
   use 'ellisonleao/gruvbox.nvim'
   use({ 'rose-pine/neovim', as = 'rose-pine' })

   -- vim tree
   use 'nvim-tree/nvim-tree.lua'
   -- use 'nvim-tree/nvim-web-devicons'

   -- status line
   use 'nvim-lualine/lualine.nvim'

   -- syntax highlighting
   use 'nvim-treesitter/nvim-treesitter'

   -- fuzzy finder
   use ' qnvim-lua/plenary.nvim'
   use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      -- dependencies = { { 'nvim-lua/plenary.nvim' } }
   }

   -- autocomplete (intellisense)
   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'L3MON4D3/LuaSnip'
   use 'saadparwaiz1/cmp_luasnip'
   use 'rafamadriz/friendly-snippets'

   -- lsp
   use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
   }

   if packer_bootstrap then
      require('packer').sync()
   end
end)
