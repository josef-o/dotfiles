" :PlugInstall
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')

    " telescope 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim' 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'nvim-lua/popup.nvim'

    " undo tree
    Plug 'simnalamburt/vim-mundo'
    
    " sección tim pope
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'

    " lsp, completion, snippets...
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " python
    Plug 'ambv/black' 

   " baby don't go
    Plug 'vim-utils/vim-man'

    " estilo
    Plug 'itchyny/lightline.vim'
    Plug 'chrisbra/csv.vim'
    Plug 'gruvbox-community/gruvbox' " porque Prime lo usa
    Plug 'kyazdani42/nvim-web-devicons' " precisa una patched font

    " Prime my man
    Plug 'ThePrimeagen/vim-be-good'

    " syntaxes
    Plug 'tmux-plugins/vim-tmux'
    Plug 'mboughaba/i3config.vim'
    Plug 'wgwoods/vim-systemd-syntax'

    " convenience
    Plug 'psliwka/vim-smoothie'
    Plug 'jiangmiao/auto-pairs'

call plug#end()

" remapeos

" desabilitar las arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <right> <nop>

nnoremap <space> <nop>
let mapleader = "\<space>"

" delete alcanzable
inoremap <C-d> <Del>

" para que se comporte como C y D
nnoremap Y y$
" para yankear al system clipboard
nnoremap <leader>y "+y

" keeping it centered
" zz centra, zv unfolds any folds
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" undo breakpoints
" <c-g>u breaks undo sequence, start new change
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <silent> <leader><f5> :e $MYVIMRC<CR>
" :so es el shorthand (shoutout %)
nnoremap <silent> <leader><CR> :source $MYVIMRC<CR>

" greatest remap ever
" para pegar arriba de algo y que no te joda el "clipboard"
vnoremap <leader>p "_dP

" Movimiento de ventanas
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" resizear ventanas
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

" mover lineas
" los gv son para rehighlightear el = para indentar (es como el gi o el gb
" para ir al último insert o bracket o eso)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
" " en normalmode mejor no, hago movimiento de ventanas con estos
" nnoremap <leader>j :m .+1<CR>==
" nnoremap <leader>k :m .-2<CR>==

" para que ripgrep ignore .git y eso
if executable('rg')
    let g:rg_derive_root='true'
endif

" lightline
" colorschemes posibles: one, gruvbox, wombat
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

