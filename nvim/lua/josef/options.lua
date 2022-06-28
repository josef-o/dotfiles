local opt = vim.opt

-- cual orden
opt.backup = false                          -- creates a backup file
opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.hidden = true
opt.errorbells = false

opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.conceallevel = 0                        -- so that `` is visible in markdown files
opt.fileencoding = "utf-8"                  -- the encoding written to a file

opt.hlsearch = false                         -- highlight all matches on previous search pattern
opt.incsearch = true
opt.mouse = ""                             -- allow the mouse to be used in neovim

opt.pumheight = 10                          -- pop up menu height
opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
opt.showtabline = 0                         -- always show tabs
opt.ignorecase = true                       -- ignore case in search patterns
opt.smartcase = true                        -- unless there is a capital in the query
opt.smartindent = true                      -- make indenting smarter again

opt.splitbelow = true                       -- force all horizontal splits to go below current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window

opt.swapfile = false                        -- creates a swapfile
opt.termguicolors = true                    -- set term gui colors (most terminals support this)
opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)

opt.undofile = true                         -- enable persistent undo
opt.updatetime = 300                        -- faster completion (4000ms default)
opt.undodir = os.getenv("XDG_CONFIG_HOME") .. "/nvim/undo"
opt.undolevels = 10000
opt.undoreload = 10000

opt.expandtab = true                        -- convert tabs to spaces
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.shiftround = true                       -- when at 1 spaces, and I hit > ... indent of 2 spaces in total, not 3
opt.tabstop = 2                             -- insert 2 spaces for a tab
opt.softtabstop = 2

-- decoraciones
opt.colorcolumn = "120"                       -- por black
opt.cursorline = true                       -- highlight the current line
opt.number = true                           -- set numbered lines
opt.relativenumber = true
opt.laststatus = 3
opt.showcmd = false
opt.ruler = false
opt.numberwidth = 4                         -- set number column width to 2 {default 4}
opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
opt.wrap = false                            -- display lines as one long line

opt.scrolloff = 20                           -- cursor kept at middle when scrolling down
opt.sidescrolloff = 8
opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
opt.fillchars = {eob = "~"}

opt.shortmess:append "c"
opt.whichwrap:append("<,>,[,],h,l")
opt.iskeyword:append("-")                    -- para los word motions

opt.formatoptions = vim.opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

-- Ignore compiled files
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }

