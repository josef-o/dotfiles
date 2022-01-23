# for dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# for specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# for cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR=nvim
export VISUAL=nvim

# para todo lo de zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# max events for internal history
export HISTSIZE=10000
# max events for histfile
export SAVEHIST=10000

export DOTFILES="$HOME/dotfiles"

# fzf
# precisa ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
