call plug#begin()

" Core
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'sbdchd/neoformat'
Plug 'ThePrimeagen/vim-be-good'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'ray-x/lsp_signature.nvim'

" Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-abolish'
Plug 'windwp/nvim-autopairs'
Plug 'junegunn/vim-easy-align'
Plug 'dkarter/bullets.vim'
Plug 'gelguy/wilder.nvim'
Plug 'tpope/vim-commentary'
Plug 'Pocco81/AutoSave.nvim'
Plug 'famiu/nvim-reload'
Plug 'folke/which-key.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mrjones2014/load-all.nvim'
Plug 'vim-test/vim-test'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'j-hui/fidget.nvim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'gregsexton/MatchTag', {'for': 'html'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'mustache/vim-mustache-handlebars'
Plug 'itchyny/vim-qfedit'
Plug 'williamboman/nvim-lsp-installer'
Plug 'startup-nvim/startup.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'mhinz/vim-rfc'
Plug 'akinsho/toggleterm.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'simrat39/symbols-outline.nvim'
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'RRethy/vim-illuminate'


" Startus line
Plug 'nvim-lualine/lualine.nvim'

" Draw ASCII diagrams
Plug 'jbyuki/venn.nvim'

" Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'
Plug 'rcarriga/nvim-dap-ui'

" Github copilot
Plug 'github/copilot.vim'

" Aesthetics - Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'zaki/zazen'
Plug 'yuttie/hydrangea-vim'
Plug 'folke/tokyonight.nvim'

" Aesthetics - Others
Plug 'luochen1990/rainbow'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'

call plug#end()
