set nocompatible " Vim Improvements

set number
set ruler
syntax on

set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

map <Leader>n :NERDTreeToggle<CR>

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Load plugin and indent settings for detected filetype
filetype plugin indent on

color vwilight

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" Reset search
map <Leader>rs :let @/='' <CR>

