" dejate de joder
set noswapfile
set clipboard+=unnamedplus

" save undo-trees in files
set nobackup
set undofile
set undodir=$XDG_CONFIG_HOME/nvim/undo
set undolevels=10000
set undoreload=10000

" set line number
set number
set relativenumber
set nowrap

" use 4 spaces instead of tabs
" copy indent from current line when starting a new line
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" when at 3 spaces, and I hit > ... indent of 4 spaces in total, not 7
set shiftround

" buffers no guardados quedan 
set hidden
set noerrorbells
set nohlsearch
set incsearch
" el modo lo muestra lightline
set noshowmode 

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set signcolumn=yes
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey
" Keep cursor more in middle when scrolling down / up
set scrolloff=999

" Set ripgrep for grep program
if executable('rg')
    set grepprg=rg\ --vimgrep
endif

