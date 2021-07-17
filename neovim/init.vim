call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'nlknguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'nikvdp/ejs-syntax'
Plug 'tpope/vim-dotenv'
Plug 'vim-python/python-syntax'
Plug 'majutsushi/tagbar'
Plug 'valloric/matchtagalways'

call plug#end()

" default settings
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
set encoding=utf-8
filetype plugin indent on
let mapleader = " "
if (has("termguicolors"))
  set termguicolors
endif
" setting colors
set t_Co=256
set background=light

syntax on
colorscheme PaperColor

" junegunn/fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader>ff :Rg<CR>
nnoremap <C-p> :Files<CR>
inoremap <expr> <c-X><c-f> fzf#vim#complete#paht(
  \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
  \ fzf#wrap({'dir': expand('%:p:h')}))


" tpope/vim-fugitive
nnoremap <leader>gg :G<CR>

" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <F2> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

let NERDTreeShowHidden=1

" Switch to the tab
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>

" key binding
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Color Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" python syntax
let g:python_highlight_all = 1

" tagbar
nmap <F8> :TagbarToggle<CR>

" mtachtagalways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

" Commentary keybind
noremap <leader>/ :Commentary<CR>
