" Default Settings for nvim
set mouse=a
set splitright
set splitbelow
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set number
set relativenumber
set ignorecase
set smartcase
set incsearch
set hidden
set nobackup
set cmdheight=1
set signcolumn=yes
set updatetime=750
set guifont=*
set noswapfile
set laststatus=2
set ttyfast
set exrc
set textwidth=79
set nohlsearch
filetype plugin indent on
let mapleader = " "
if (has("termguicolors"))
  set termguicolors
endif
" setting colors
set t_Co=256

" Plugin Installed
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround' " Surrounding ysw cw
Plug 'tpope/vim-commentary' " For Comment Code use gcc || gc
Plug 'vim-airline/vim-airline' " Status Bar
Plug 'scrooloose/nerdtree' " NerdTree Structure directory Space bar to refresh
Plug 'ryanoasis/vim-devicons' " Icon folder & Language
Plug 'terryma/vim-multiple-cursors' " Ctrl + N => Multicursor
Plug 'majutsushi/tagbar' " Tagbar navigation
Plug 'joshdick/onedark.vim' " Theme one dark
Plug 'neoclide/coc.nvim' " Auto complete
Plug 'mattn/emmet-vim' " For HTML5 use CTRL + Y + ,
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive' " For keybind github
Plug 'jiangmiao/auto-pairs' " Auto collon


call plug#end()

" Encoding UTF8
set encoding=UTF-8

" Theme color schema
syntax on
colorscheme onedark

" NerdTree Config
nnoremap <silent> <expr> <F2> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let NERDTreeShowHidden=1

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" junegunn/fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader>ff :Rg<CR>
nnoremap <C-p> :Files<CR>
inoremap <expr> <c-X><c-f> fzf#vim#complete#paht(
  \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
  \ fzf#wrap({'dir': expand('%:p:h')}))


" tpope/vim-fugitive
nnoremap <leader>gg :G<CR>

" Switch to the tab
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>

" key binding
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
