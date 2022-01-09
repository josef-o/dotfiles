" :PlugInstall
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'chrisbra/csv.vim'
    Plug 'simeji/winresizer' 
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'moll/vim-bbye' " :Bdelete en vez de :bdelete mantiene vim abierto
call plug#end()

" dejate de joder
set noswapfile
set clipboard+=unnamedplus
" un-highlight when esc is pressed
map <silent> <esc> <Cmd>noh<cr>

" desabilitar las arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" save undo-trees in files
set undofile
set undodir=$XDG_CONFIG_HOME/nvim/undo
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tabs
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" when at 3 spaces, and I hit > ... indent of 4 spaces in total, not 7
set shiftround

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Keep cursor more in middle when scrolling down / up
set scrolloff=999

" remapeos
nnoremap <space> <nop>
let mapleader = "\<space>"
nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab
" splits como en tmux
nnoremap <c-w>h <c-w>s
" delete alcanzable
inoremap <C-d> <Del>

" edit vimrc with f5 and source it with f6
nnoremap <silent> <leader><f5> :vsplit $MYVIMRC<CR>
nnoremap <silent> <leader><f6> :source $MYVIMRC<CR>

" plugins
" csv
augroup filetype_csv
    autocmd!
    autocmd BufRead ,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END
" winresizer
let g:winresizer_start_key = "<leader>w"
" bbye
nnoremap <leader>B :Bdelete<cr> ;bbye

" Set ripgrep for grep program
if executable('rg')
    set grepprg=rg\ --vimgrep
endif
