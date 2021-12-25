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
" set relativenumber
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
" if (has("termguicolors"))
"   set termguicolors
" endif
" setting colors
" set t_Co=256
set background=dark

" Plugin Installed
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround' " Surrounding ysw cw
Plug 'tpope/vim-commentary' " For Comment Code use gcc || gc
Plug 'vim-airline/vim-airline' " Status Bar
Plug 'scrooloose/nerdtree' " NerdTree Structure directory Space bar to refresh
Plug 'ryanoasis/vim-devicons' " Icon folder & Language
Plug 'terryma/vim-multiple-cursors' " Ctrl + N => Multicursor
Plug 'majutsushi/tagbar' " Tagbar navigation
Plug 'morhetz/gruvbox' " Theme gruvbox
Plug 'sonph/onehalf', {'rtp': 'vim/'} " Theme onehalf
Plug 'neoclide/coc.nvim' " Auto complete
Plug 'mattn/emmet-vim' " For HTML5 use CTRL + Y + ,
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive' " For keybind github
Plug 'jiangmiao/auto-pairs' " Auto collon
Plug 'yardnsm/vim-import-cost' " Import Cost
call plug#end()

" Encoding UTF8
set encoding=UTF-8

" Theme color schema
syntax on
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

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

" Import Cost Config
augroup import_cost_auto_run
  autocmd!
  autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
augroup END


" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
" If does't work you forgot use :CocInstall coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
