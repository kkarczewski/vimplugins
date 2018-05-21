set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Rykka/clickable.vim'
Plugin 'Rykka/clickable-things'
Plugin 'ervandew/supertab'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'junegunn/vim-easy-align'
Plugin 'yggdroot/indentline'
Plugin 'DrawIt'
"Plugin 'tpope/vim-sensible'
"Plugin 'elxr/vim-json'
"Plugin 'roxma/vim-paste-easy'
"
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
execute pathogen#infect()
syntax on
filetype plugin indent on    " required
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd Filetype python setlocal ts=3 sts=3 sw=3

set list
set listchars=tab:\ \ ,trail:.,extends:>,precedes:<
set list lcs=tab:\|\
set mouse=a
let NERDTreeMouseMode=3
let NERDTreeMinimalUI=1
let NERDTreeDirArrow=1

let g:indentLine_enabled=3
"let g:indentLine_char='c'
let g:indentLine_color_term=239
let g:indentLine_concealcursor ='inc'
let g:indentLine_conceallevel = 1
