" General
set history=500

filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

set autoread
au FocusGained,BufEnter * checktime

" :W sudo saves the file
command! SW execute 'w !sudo tee % > /dev/null' <bar> edit!

" User Interface
set so=7

set ruler
set cmdheight=1
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set hlsearch
set incsearch

set lazyredraw
set magic

set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number 

syntax on

" Other stuff

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap Lines


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
imap jj <Esc>
