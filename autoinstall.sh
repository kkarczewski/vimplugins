yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install python36u python36u-pip git
python3.6 -m pip install jedi
python3.6 -m pip install flake8
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd .vim/bundle/ && git clone https://github.com/nvie/vim-flake8
echo 'set encoding=utf-8' >> ~/.vimrc
echo 'scriptencoding utf-8' >> ~/.vimrc
echo 'set nocompatible              " be iMproved, required' >> ~/.vimrc
echo 'filetype off                  " required' >> ~/.vimrc
echo 'set number' >> ~/.vimrc
echo '' >> ~/.vimrc
echo '" set the runtime path to include Vundle and initialize' >> ~/.vimrc
echo 'set rtp+=~/.vim/bundle/Vundle.vim' >> ~/.vimrc
echo 'call vundle#begin()' >> ~/.vimrc
echo "Plugin 'VundleVim/Vundle.vim'" >> ~/.vimrc
echo "Plugin 'tpope/vim-fugitive'" >> ~/.vimrc
echo "Plugin 'davidhalter/jedi-vim'" >> ~/.vimrc
echo "Plugin 'scrooloose/nerdtree'" >> ~/.vimrc
echo "Plugin 'Xuyuanp/nerdtree-git-plugin'" >> ~/.vimrc
echo "Plugin 'Rykka/clickable.vim'" >> ~/.vimrc
echo "Plugin 'Rykka/clickable-things'" >> ~/.vimrc
echo "Plugin 'ervandew/supertab'" >> ~/.vimrc
echo "Plugin 'raimondi/delimitmate'" >> ~/.vimrc
echo "Plugin 'mattn/emmet-vim'" >> ~/.vimrc
echo "Plugin 'ntpeters/vim-better-whitespace'" >> ~/.vimrc
echo "Plugin 'junegunn/vim-easy-align'" >> ~/.vimrc
echo "Plugin 'yggdroot/indentline'" >> ~/.vimrc
echo "Plugin 'DrawIt'" >> ~/.vimrc
echo "\"Plugin 'tpope/vim-sensible'" >> ~/.vimrc
echo "\"Plugin 'elxr/vim-json'" >> ~/.vimrc
echo "\"Plugin 'roxma/vim-paste-easy'" >> ~/.vimrc
echo '' >> ~/.vimrc
echo 'call vundle#end()            " required' >> ~/.vimrc
echo '" To ignore plugin indent changes, instead use:' >> ~/.vimrc
echo '" filetype plugin on' >> ~/.vimrc
echo '" :PluginList       - lists configured plugins' >> ~/.vimrc
echo '" :PluginInstall    - installs plugins; append `!` to update or just' >> ~/.vimrc
echo '" :PluginUpdate' >> ~/.vimrc
echo '" :PluginSearch foo - searches for foo; append `!` to refresh local cache' >> ~/.vimrc
echo '" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal' >> ~/.vimrc
echo '"' >> ~/.vimrc
echo '" see :h vundle for more details or wiki for FAQ' >> ~/.vimrc
echo '" Put your non-Plugin stuff after this line' >> ~/.vimrc
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin indent on    " required' >> ~/.vimrc
echo 'autocmd vimenter * NERDTree' >> ~/.vimrc
echo 'autocmd StdinReadPre * let s:std_in=1' >> ~/.vimrc
echo 'autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif' >> ~/.vimrc
echo 'autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe "NERDTree" argv()[0] | wincmd p | ene | endif' >> ~/.vimrc
echo 'autocmd Filetype python setlocal ts=3 sts=3 sw=3' >> ~/.vimrc
echo 'set list' >> ~/.vimrc
echo 'set listchars=tab:\|\' >> ~/.vimrc
echo 'set list lcs=tab:\|\ ' >> ~/.vimrc
echo 'set mouse=a' >> ~/.vimrc
echo 'let g:NERDTreeMouseMode=3' >> ~/.vimrc
echo 'let g:NERDTreeMinimalUI=1' >> ~/.vimrc
echo 'let NERDTreeShowHidden=1' >> ~/.vimrc
echo 'let g:NERDTreeDirArrow=1' >> ~/.vimrc
echo 'let g:indentLine_enabled=3' >> ~/.vimrc
echo 'let g:indentLine_color_term=239' >> ~/.vimrc
echo "let g:indentLine_concealcursor=\'inc\'" >> ~/.vimrc
echo 'let g:indentLine_conceallevel=1' >> ~/.vimrc
