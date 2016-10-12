
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'

Plugin 'flazz/vim-colorschemes'


call vundle#end()

filetype plugin indent on

set autoread

set backspace=indent,eol,start

let mapleader = ','

set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set autoindent
set smartindent

nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

"""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch

set magic

set showmatch
set mat=2

syntax on

set encoding=utf8

set ttyfast

set background=dark

set number


set laststatus=2



let g:NERDTreeQuitOnOpen=0

let NERDTreeShowHidden=1

nmap <silent> <leader>n :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

let g:ctrlp_custom_ignore = {
			\ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }



