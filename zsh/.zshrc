source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/external/completion.zsh"
source "$ZDOTDIR/external/bd.zsh"
source "$ZDOTDIR/scripts.zsh"

# startup de i3 y el x server
if [ "$(tty)" = "/dev/tty1/" ]; 
then
    # exec reemplaza el shell process (i3 también lo vuelve a hacer en .xinitrc)
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Opciones
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# para poder autoloadear de external
fpath=($ZDOTDIR/external $fpath)

# está en external
autoload -Uz prompt_purification_setup; prompt_purification_setup
autoload -Uz cursor_mode && cursor_mode

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# movimientos de vim en autocomplete
# importar modulo de zsh (da acceso a menuselect)
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# autocomplete
# autoload carga funciones, por eso después la llamamos
autoload -U compinit; compinit
# autocomplete hidden files
_comp_options+=(globdots)

# editar comandos con nvim
autoload -Uz edit-command-line
zle -N edit-command-line
# vicmd hace que solo funcione en NORMAL mode el bindkey
bindkey -M vicmd v edit-command-line

# instalado con pacman
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
# los atajos son 
# CTRL+t busca archivo recursivamente
# CTRL+r busca comando en la historia
# ALT+c te permite seleccionar un subdirectorio como working dir
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

