" Begin required
set nocompatible " Be improved, required
filetype off     " required
" End required

" Begin Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'           " Theme Code 
Plug 'vim-airline/vim-airline'         " Theme tab
Plug 'vim-airline/vim-airline-themes'  " Theme status
Plug 'scrooloose/nerdtree'             " Show Directory
Plug 'scrooloose/nerdcommenter'        " Comment code
Plug 'jiangmiao/auto-pairs'            " Auto complie [] () {}
Plug 'tpope/vim-fugitive'              " Show status GIT
Plug 'ctrlpvim/ctrlp.vim'              " Search file & dirs
call plug#end()
" End Plugin Manager


" Theme Color
colorscheme monokai
set termguicolors 
set t_Co=256

" Begin Basic Config
syntax on
set nu
" set rnu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set noswapfile
set hlsearch
set encoding=utf-8
set laststatus=2
set ruler
set guifont=*
set scrolloff=23
" set expandtab
set mouse=n

filetype indent on
filetype plugin indent on " required

" End Basic Config

" Begin set mapleader
let mapleader = " "
" End set mapleader

" Begin set shortcut key NERDTree
let NERDTreeQuitOnOpen=0
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" End set shortcut key NERDTree

" Begin seting shortcut comment
nmap <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>
" End seting shortcut comment

" Begin setting theme airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" let g:airline_theme='monokai'
" End setting theme airline

" Begin Setting Shortcuts keyboard switch to the tab
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
" nmap <C-w> :bd<CR>
" End Setting Shortcuts keyboard switch to the tab
