" Vim Improvements
set nocompatible

" Pathogen
call pathogen#infect()

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
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Load plugin and indent settings for detected filetype
filetype plugin indent on

" Color
set t_Co=256
set background=dark
color jgw256

set cursorline!

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" Reset search
map <Leader>rs :let @/='' <CR>

" Command height
set cmdheight=2

" Filetypes
au BufRead,BufNewFile conf set ft=apache
au BufRead,BufNewFile Gemfile set ft=ruby
au BufRead,BufNewFile Guardfile set ft=ruby
au BufRead,BufNewFile *.hbs set ft=handlebars
au BufRead,BufNewFile *.json set ft=json

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" Running Tests
map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>a :call RunTests('')<cr>

function! RunTestFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  " Run the tests for the previously-marked file
  let in_test_file = match(expand("%"), '\(_spec.rb\)$') != -1

  if in_test_file
    call SetTestFile()
  elseif !exists("t:jgw_test_file")
    return
  end

  call RunTests(t:jgw_test_file . command_suffix)
endfunction

function! RunNearestTest()
  let spec_line_number = line('.')
  call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
  let t:jgw_test_file=@%
endfunction

function! RunTests(filename)
  :w
  if filereadable("Gemfile")
    exec ":!bundle exec rspec " . a:filename
  else
    exec ":!rspec " . a:filename
  end
endfunction

