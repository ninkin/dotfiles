filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'benmills/vimux'
Plugin 'majutsushi/tagbar'
Plugin 'nvie/vim-flake8'

Plugin 'flazz/vim-colorschemes'


call vundle#end()


"edit
set encoding=utf-8

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

set ttyfast

set background=dark
colorscheme molokai

set number




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

"vim-airline
set t_Co=256
set laststatus=2
let g:airline_detect_paste=1
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1


"youcompleteme
"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

"vimux
map <Leader>vp :VimuxPromptCommand<CR>

"tagbar
nmap <F8> :TagbarToggle<CR>
