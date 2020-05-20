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
set encoding=UTF-8

" }}}

" Plugins
" {{{
call plug#begin('~/.vim/plugged')

Plug 'iCyMind/NeoSolarized'
Plug 'vim-scripts/indentpython.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'

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
set background=dark
colorscheme NeoSolarized 
hi CursorLineNr cterm=NONE

" ligthline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set noshowmode

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
nnoremap <leader>wq :wq<CR>
nnoremap <leader>gd :Gdiffsplit<CR>

" convenience
map :qw :wq
map :W :w

" sudo save
cmap w!! w !sudo tee > /dev/null %

" NerdTree
map <leader>f :NERDTreeToggle<CR>
map <leader>l :ALEToggle<CR>

nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>r <Plug>(coc-rename)

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

" Black
autocmd BufWritePre *.py execute ':Black'

" emmet
let g:user_emmet_leader_key=','

" Ale
let g:ale_enabled = 0
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \}

" Vim fugitive
set diffopt+=vertical

" }}}

" vim: set foldmethod=marker: 
