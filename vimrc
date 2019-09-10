set list
set listchars=tab:>-
set expandtab
set tabstop=4
set shiftwidth=4

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" bottom bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" git tools
Plugin 'tpope/vim-fugitive'
" rails and ruby
Plugin 'tpope/vim-rails'
" snippets
Plugin 'MarcWeber/vim-addon-mw-utils' " dependency
Plugin 'tomtom/tlib_vim'              " dependency
Plugin 'garbas/vim-snipmate'
" control-p
Plugin 'ctrlpvim/ctrlp.vim'
" supertab
Plugin 'ervandew/supertab'
" Latex
Plugin 'lervag/vimtex'

call vundle#end()            " required
filetype plugin indent on    " required

" airline config
set laststatus=2                          " airline always enabled
let g:airline_theme='jellybeans'          " enable theme
set t_Co=256                              " enable colors

" control-p config
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
