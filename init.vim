call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'epmatsw/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-vinegar'

call plug#end()

set tabstop=2               " default size of a real tab stop
set softtabstop=2           " pressing tab/backspaces inserts/removes 2 chars
set expandtab               " insert spaces instead of tabs

set autoread                " read file if it's changed outside of vim
set noswapfile

let mapleader = ","         " set <LEADER> to ,

let g:netrw_liststyle= 3    " Default to tree style listing
let g:netrw_altv = 1        " New split window on the right

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

