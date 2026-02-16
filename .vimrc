set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rails.git'
  Plugin 'scrooloose/nerdtree'
call vundle#end()

" minimal settings
set number
set relativenumber
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

autocmd VimEnter * execute 'NERDTree'

nnoremap j gj
nnoremap k gk

set list listchars=tab:\>\-

syntax on
colorscheme molokai
set t_Co=256

