""""""""""""""""""""""""
" General Enhancements "
""""""""""""""""""""""""

" Some basic QOL improvements
set number
set ruler
set autoindent
set showmatch
set ttimeoutlen=5

" Syntax highlighting and colors
syntax on
set t_Co=256

" Set tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab

" Search enhancements
set ignorecase
set smartcase

" Set textwidth to 79 for .txt, .md, and .markdown files.
au BufReadPost,BufNewFile *.md,*.txt,*.markdown setlocal tw=79

"""""""""""""""""""""""""""""""
" Install VimPlug and Plugins "
"""""""""""""""""""""""""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List plugs here. To intall them:
" Reload .vimrc with ':source %' and then run ':PlugInstall'.
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

""""""""""""""""""""""""
" Plugin Configuration "
""""""""""""""""""""""""

" Airline + Theme
let g:airline_theme='wombat'
