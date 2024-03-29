" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" " =============== Vundle Initialization ===============
" " This loads all the plugins specified in ~/.vim/vundles.vim
" " Use Vundle plugin to manage all other plugins
" if filereadable(expand("~/.vim/vundles.vim"))
" 	source ~/.vim/vundles.vim
" endif
" au BufNewFile,BufRead *.vundle set filetype=vim
"
" " ================ Plugins =====================
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " " alternatively, pass a path where Vundle should install plugins
" " "call vundle#begin('~/some/path/here')
" "
" " " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" " Golang
" Plugin 'fatih/vim-go'
"
" " Plugin 'lyuts/vim-rtags'
" " Plugin 'wincent/command-t'
" Plugin 'altercation/vim-colors-solarized', {'name': 'altercation-solarized'}
" Plugin 'utl.vim'
" " Plugin 'leafgarland/typescript-vim'
" Plugin 'mustache/vim-mustache-handlebars'
" " Solidity contracts
" Plugin 'TovarishFin/vim-solidity'
" " Plugin?
" Plugin 'michaeljsmith/vim-indent-object'
"Bundle 'phleet/vim-mercenary'
"Bundle 'file-line'
" Plugin 'lyuts/vim-rtags'

" call vundle#end()            " required
" filetype plugin indent on    " required

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

filetype plugin on
filetype indent on

" set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " 2 spaces for py
  autocmd FileType py setlocal ts=4 sts=4 sw=4 expandtab paste
endif


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital


" ================ Colors ======================
syntax enable
set background=dark
" colorscheme solarized

" ================ Custom Settings ========================

" BUCK files are python.
au BufRead,BufNewFile *BUCK set filetype=python

au BufRead,BufNewFile .bash_aliases set filetype=bash


" leave escape
"imap jj <Esc>
"inoremap jk <Esc>


"set number "line numbers!
set smartcase  "case insensitive search
set iskeyword=@,45,48-57,58,_,192-255,# "ctags

" Change default pane splits
set splitbelow
set splitright
set paste

" from ~meyering/.vimrc
" Highlight "bad" spaces
let c_space_errors=1
"
" " Also highlight empty lines at EOF.
match ErrorMsg /\s\+$\| \+\ze\t/

" Remove trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

"
" " Enable incremental search.
set incsearch

" Might help with copy/paste
"set clipboard=unnamed
" by default
set wrap

" 80 character highlighting
set colorcolumn=81,101 " absolute columns to highlight "
set colorcolumn=+1,+21 " relative (to textwidth) columns to highlight "

" Paste without autoindent
nnoremap p ]p
nnoremap <c-p> p


" Clang-format (ctrl+k)
map <C-K> :pyf /usr/local/share/clang/clang-format.py<CR>
imap <C-K> <ESC>:pyf /usr/local/share/clang/clang-format.py<CR>i

" fuzzyfinder
"set rtp+=~/.fzf

" jk or ;; exit insert mode.
inoremap jk <Esc>
inoremap ;; <Esc>


" Auto indent pasted text
"nnoremap p p=`]<C-o>
"nnoremap P P=`]<C-o>

" Set tmux window title to be Vim filename
"autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
"set title
if exists('$TMUX')

  autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
  "autocmd VimLeave * call system("tmux rename-window bash")
  autocmd VimLeave * call system("tmux setw automatic-rename")
  autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
  set title
endif

let g:slime_target = "tmux"
