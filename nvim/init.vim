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

" desabilitar las arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
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

" remapeos
nnoremap <space> <nop>
let mapleader = "\<space>"
nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

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
