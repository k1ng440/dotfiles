""" Main Configurations
filetype indent on
filetype plugin indent on  
let mapleader=" "
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set expandtab
" set smarttab
set incsearch
set hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set fillchars+=vert:\ 
set nowrap
set encoding=utf-8
set textwidth=0
set relativenumber
set number
set title
set hidden
set nobackup
set undofile
set undodir=~/.vim/undo
set wildmenu
" set path+=**

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

