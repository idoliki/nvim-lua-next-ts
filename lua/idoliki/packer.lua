vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- Colors
   use { "catppuccin/nvim", as = "catppuccin" }
   use 'norcalli/nvim-colorizer.lua'
   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
   }
   use 'tpope/vim-fugitive'
   use 'kyazdani42/nvim-web-devicons' -- File icons

   -- Browsing
   use 'mbbill/undotree'
   use 'theprimeagen/harpoon'
   use {

      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }
   use 'nvim-telescope/telescope-file-browser.nvim'

   -- Completions
   use 'windwp/nvim-autopairs'
   use 'windwp/nvim-ts-autotag'

   -- LSP
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {'williamboman/mason.nvim'},           -- Optional
         {'williamboman/mason-lspconfig.nvim'}, -- Optional

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},         -- Required
         {'hrsh7th/cmp-nvim-lsp'},     -- Required
         {'hrsh7th/cmp-buffer'},       -- Optional
         {'hrsh7th/cmp-path'},         -- Optional
         {'saadparwaiz1/cmp_luasnip'}, -- Optional
         {'hrsh7th/cmp-nvim-lua'},     -- Optional

         -- Snippets
         {'L3MON4D3/LuaSnip'},             -- Required
         {'rafamadriz/friendly-snippets'}, -- Optional
      }
   }
   -- use('neovim/nvim-lspconfig')
   use('jose-elias-alvarez/null-ls.nvim')
   use('MunifTanjim/prettier.nvim')
   use('princejoogie/tailwind-highlight.nvim')
   use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
         require("lspsaga").setup({})
      end,
      requires = {
         {"nvim-tree/nvim-web-devicons"},
         --Please make sure you install markdown and markdown_inline parser
         {"nvim-treesitter/nvim-treesitter"}
      }
   })


   -- Misc
   use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }

   use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
   end}
   use('tpope/vim-commentary')

   -- Git
   use 'github/copilot.vim'
   use 'lewis6991/gitsigns.nvim'
   use 'dinhhuy258/git.nvim' -- For git blame & brows

end)
