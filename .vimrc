filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

Plugin 'flazz/vim-colorschemes'


call vundle#end()


"edit
"tabs
filetype plugin indent on

set autoread

set backspace=indent,eol,start

let mapleader = ','

set expandtab
set smarttab

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set autoindent
set smartindent

"movement
nmap j gj
nmap k gk

"copy and paste

nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

"UI
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
colorscheme molokai

set number


set laststatus=2


"neredtree

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

nmap <silent> <leader>n :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

"ctrlp

let g:ctrlp_custom_ignore = {'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$', 'file': '\.exe$\|\.so$'}
nmap <silent> <leader>r :CtrlPBuffer<cr>

"syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_remove_include_errors = 1


"youcompleteme
"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
