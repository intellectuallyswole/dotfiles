set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'reedes/vim-pencil'

" Plugins go here

call vundle#end()            " required
filetype plugin indent on    " required

set tags=tags;/

set t_Co=256
set background=dark

" fzf
"set rtp+=~/.fzfA

:inoremap jk <esc>

source ~/dotfiles/vimrc
