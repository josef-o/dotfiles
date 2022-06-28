-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n", opts)
--   insert_mode = "i", opts)
--   visual_mode = "v", opts)
--   visual_block_mode = "x", opts)
--   term_mode = "t", opts)
--   command_mode = "c", opts)

-- delete alcanzable
keymap("i", "<C-d>", "<Del>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- mover lineas
-- los gv son para rehighlightear el = para indentar 
-- (es como el gi o el gb para ir al último insert o bracket o eso)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '>-2<CR>gv=gv", opts)
keymap("i", "<C-j>", "<esc>:m .+1<CR>==", opts)
keymap("i", "<C-k>", "<esc>:m .-2<CR>==", opts)

-- undo breakpoints
-- <c-g>u breaks undo sequence, start new change
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)

-- nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
keymap("n", "<leader>pv", ":Ex<CR>", opts)
keymap("n", "<leader>ps", ":Rg<SPACE>", opts)

keymap("n", "<leader><f5>", ":e ~/.config/nvim/init.lua<CR>", opts)
-- :so es el shorthand (shoutout %)
keymap("n", "<leader><CR>", ":source ~/.config/nvim/init.lua<CR>", opts)

-- greatest remap ever
-- para pegar arriba de algo y que no te joda el "clipboard"
-- Better paste
keymap("v", "p", '"_dP', opts)
keymap("x", "p", '"_dP', opts)
keymap("n", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

