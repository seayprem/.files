" =========================================
"
" Plugin Manager 
"
" =========================================
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'nlknguyen/papercolor-theme'
" Plug 'christoomey/vim-system-copy'
Plug 'joshdick/onedark.vim'            " Theme color
Plug 'vim-airline/vim-airline'         " Theme tab
Plug 'vim-airline/vim-airline-themes'  " Theme status
Plug 'scrooloose/nerdtree'             " Show Directory
Plug 'jiangmiao/auto-pairs'            " Auto complie [] () {}
Plug 'tpope/vim-fugitive'              " Show status GIT
Plug 'ctrlpvim/ctrlp.vim'              " Search file & dirs
Plug 'mattn/emmet-vim'

call plug#end()

" =========================================
"
" Theme Configurations
"
" =========================================

set t_Co=256
set t_ut=

if has('termguicolors')
  set termguicolors
endif

" colorscheme onedark
colorscheme PaperColor


" =========================================
"
" Basic Configurations
"
" =========================================

" Don't try to be vi compatible
set nocompatible

syntax on

" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set nu
" set rnu

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
" set visualbell

" Encoding
set encoding=utf-8

"  Whitespace
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Multiple to read
set exrc

" Allow all fonts
set guifont=*

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" No swap file or cache file
set noswapfile

" Color scheme (terminal)
set t_Co=256
set background=light

" Color Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
" let g:airline_theme = 'onedark'
let g:airline_theme = 'papercolor'

" My Map Leader
let mapleader = " "

" Switch to the tab
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>

" Close buffer 
" nmap <leader>c :bw<CR>
" nmap <leader>t :bd<CR>


" NERDTree shortkey
let NERDTreeQuitOnOpen=0
let g:NREDTreeMinimalUI=1
let NERDTreeShowHidden=1
nmap <F2> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeFocus<cr> \| R \| <c-w><c-p>


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Emmet Configurations
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
" Emmet Shortcuts 
" let g:user_emmet_leader_key='<C-Z>'

