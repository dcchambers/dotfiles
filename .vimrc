""""""""""""""""""""""""
" General Enhancements "
""""""""""""""""""""""""

" Some basic QOL improvements
set number
set ruler
set autoindent
set showmatch

" Syntax highlighting
syntax on

" Set tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab

" Search enhancements
set ignorecase
set smartcase

""""""""""""""""""""
" Plugins and more "
""""""""""""""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List plugs here. To intall them:
" Reload .vimrc with ':source %' and then run ':PlugInstall'.
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

call plug#end()
