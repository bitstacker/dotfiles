set list
set listchars=tab:>-
set expandtab
set tabstop=2
set shiftwidth=2
set mouse-=a
set nocompatible
filetype off
colorscheme darkblue

filetype plugin indent on    " required

autocmd Filetype python setl et ts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2

source $HOME/.vimrc.d/00_vundle.vim
source $HOME/.vimrc.d/airline.vim
