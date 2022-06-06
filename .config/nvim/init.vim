""" Main Configurations
filetype indent on
set autoindent
set smartindent
filetype plugin indent on  
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title
set relativenumber

""" Vim-Plug
call plug#begin()

" Core (treesitter, nvim-lspconfig, nvim-cmp, nvim-telescope, nvim-lualine)
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

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
Plug 'phaazon/hop.nvim'
Plug 'j-hui/fidget.nvim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-sleuth'
" Plug 'editorconfig/editorconfig-vim'
Plug 'gregsexton/MatchTag', {'for': 'html'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'mustache/vim-mustache-handlebars'
Plug 'itchyny/vim-qfedit'
Plug 'williamboman/nvim-lsp-installer'
Plug 'startup-nvim/startup.nvim'
Plug 'folke/todo-comments.nvim'

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

""" Filetype-Specific Configurations
" HTML, XML
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Coloring
" color dracula
color tokyonight
set termguicolors

""" Core plugin configuration (vim)
" nvim-cmp
set completeopt=menu,menuone,noselect

" netrw
let g:netrw_liststyle = 3
let g:netrw_altv = 1

" signify
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

" FixCursorHold for better performance
let g:cursorhold_updatetime = 100

" rainbow
let g:rainbow_active = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

""" Core plugin configuration (lua)
lua << EOF
    servers = {
        -- 'pyright',
        'lua',
        'gopls',
        'tsserver',
    }
    require('keymaps')
    require('treesitter-config')
    require('nvim-cmp-config')
    require('lspconfig-config')
    require('telescope-config')
    require('lualine-config')
    require('nvim-tree-config')
    require('diagnostics')
    require('lua-init')
    require('autocmd')
EOF

