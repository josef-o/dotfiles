local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "-- depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  -- basics
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use 'lewis6991/impatient.nvim'

  -- lo que quieren las wachas
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"

  -- treesitter
  use{  "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- file exploring
  use "kyazdani42/nvim-tree.lua"

  -- terminal
  use "akinsho/toggleterm.nvim"

  -- telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"

  -- colorschemes
  use "folke/tokyonight.nvim"
  use "LunarVim/darkplus.nvim"
  use "LunarVim/onedarker.nvim"

    -- sección tim pope
    use 'tpope/vim-surround'

    -- lsp
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "jose-elias-alvarez/null-ls.nvim"

    -- completions (cmp)
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    -- git
    use "lewis6991/gitsigns.nvim"

    -- baby don't go
    use 'vim-utils/vim-man'

    -- estilo
    use 'itchyny/lightline.vim'
    use 'chrisbra/csv.vim'
    use 'gruvbox-community/gruvbox' -- porque Prime lo usa
    use 'kyazdani42/nvim-web-devicons' -- precisa una patched font

    -- Prime my man
    use 'ThePrimeagen/vim-be-good'

    -- syntaxes
    use 'tmux-plugins/vim-tmux'
    use 'mboughaba/i3config.vim'
    use 'wgwoods/vim-systemd-syntax'

    -- convenience
    -- para los pg-<up/down> con todo el coconut oil
    use 'psliwka/vim-smoothie'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
