call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'nikvdp/ejs-syntax'
Plug 'itchyny/lightline.vim'

call plug#end()

" default options
set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set expandtab
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set updatetime=750
set guifont=*
set noswapfile
set laststatus=2
filetype plugin indent on
let mapleader = " "
if (has("termguicolors"))
  set termguicolors
endif

" color setting
set t_Co=256
set background=dark

syntax on
colorscheme onedark

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
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

let NERDTreeShowHidden=1

" VIM-JAVASCRIPT & Installation
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

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

set conceallevel=0

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

"  git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript
"  git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

" lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
