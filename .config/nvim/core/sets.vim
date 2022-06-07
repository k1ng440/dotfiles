""" Main Configurations
set path+=**
filetype indent on
filetype plugin indent on  
set autoindent
set smartindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
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

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

