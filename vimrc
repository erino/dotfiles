let ruby_version = '2.5.3'  " Set ruby version for config

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'epmatsw/ag.vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
Plug 'lepture/vim-jinja'
Plug 'wincent/command-t', {
   \   'do': 'cd ruby/command-t/ext/command-t && chruby-exec ' . ruby_version . ' -- ruby extconf.rb && make'
   \ }
call plug#end()

set tabstop=2               " default size of a real tab stop
set softtabstop=2           " pressing tab/backspaces inserts/removes 2 chars
set shiftwidth=2            " the number of spaces used by << and >>
set expandtab               " insert spaces instead of tabs

set autoread                " read file if it's changed outside of vim
set noswapfile
set nowrap                  " disable line wrapping

let mapleader = ","         " set <LEADER> to ,

let g:netrw_liststyle = 3   " Default to tree style listing
let g:netrw_altv = 1        " New split window on the right

let g:ruby_host_prog = 'chruby-exec ' . ruby_version . ' -- /Users/erinrajstaniland/.gem/ruby/' . ruby_version . '/bin/neovim-ruby-host'

set wildignore+=*/node_modules/*,*/tmp/*,*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

