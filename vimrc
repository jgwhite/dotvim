" Vim Improvements
set nocompatible

syntax on

set number
set ruler
set nofoldenable
set nospell

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

" NERD Commenter
map <D-/> <plug>NERDCommenterToggle<CR>

" Command height
set cmdheight=2

" Filetypes
au BufRead,BufNewFile conf set ft=apache
au BufRead,BufNewFile JFile set ft=ruby
au BufRead,BufNewFile Guardfile set ft=ruby
au BufRead,BufNewFile *.hbs set ft=handlebars
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.pde set ft=java
au BufRead,BufNewFile *.scss set ft=scss
au BufRead,BufNewFile *.spec set ft=ruby
au BufRead,BufNewFile *.as set ft=actionscript

