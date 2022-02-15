source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/external/completion.zsh"
source "$ZDOTDIR/external/bd.zsh"
source "$ZDOTDIR/scripts.zsh"

# startup de i3 y el x server
if [ "$(tty)" = "/dev/tty1" ]; 
then
    # exec reemplaza el shell process (i3 también lo vuelve a hacer en .xinitrc)
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Opciones
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# para poder autoloadear de external
fpath=($ZDOTDIR/external $fpath)

# están en external
autoload -Uz prompt_purification_setup; prompt_purification_setup
# para que los modos de nvim se vean igual en la terminal
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
# autoload carga funciones, por eso después las llamamos
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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/josef/dev/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/josef/dev/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/josef/dev/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/josef/dev/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

