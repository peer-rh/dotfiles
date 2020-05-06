" General
" {{{
set history=500

filetype plugin on
filetype indent on

set autoread
au FocusGained,BufEnter * checktime


set noswapfile
set nobackup
set nowritebackup

set t_Co=256
" }}}

" Plugins
" {{{
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

call plug#end()
" }}}


" User Interface 
" {{{
" Lines up and down from cursor
set so=7 

set ruler
set cmdheight=1
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set cursorline
set wildmenu 
set showmatch

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
colorscheme nord 
set cursorline

" ligthline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" }}}


" Other stuff
" {{{
filetype indent on      

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap Lines

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set modeline
set modelines=5
" }}}


" remapings 
" {{{
let mapleader = " "
nnoremap ; :

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
imap jj <Esc>
" delete highlights from search
nnoremap <leader><leader> :nohlsearch<CR>
" unfold
nnoremap <leader><Enter> za
" move per visual line
nnoremap j gj
nnoremap k gk
" Remap to beginning/end of line
nnoremap <S-h> ^
nnoremap <S-l> $
" Add a date timestamp between two new lines.
nnoremap <leader>d :r! echo "" && date && echo ""<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>

" convenience
map :qw :wq
map :W :w

" sudo save
cmap w!! w !sudo tee > /dev/null %

" NerdTree
map <leader>f :NERDTreeToggle<CR>

" }}}

" Language specific
" {{{
filetype plugin indent on

"python 
au BufNewFile,BufRead *.py
    \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2
" }}}

" Plugin specific
" {{{
" NERDTree
let NERDTreeShowHidden=1

" Nord
let g:nord_cursor_line_number_background = 1
" }}}

" vim: set foldmethod=marker: 
