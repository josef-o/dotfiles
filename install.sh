#!/bin/bash

set -x

########
# nvim #
########
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
# -f es de force, si ya existe el link lo borra y recrea
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

#######
# X11 #
#######
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

########
#  i3  #
########
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME" 

#######
# zsh #
#######
mkdir -p "$XDG_CONFIG_HOME/zsh"
# -f es de force, si ya existe el link lo borra y recrea
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases.zsh" "$XDG_CONFIG_HOME/zsh/aliases.zsh"
ln -sf "$DOTFILES/zsh/scripts.zsh" "$XDG_CONFIG_HOME/zsh/scripts.zsh"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -s "$DOTFILES/zsh/external/" "$XDG_CONFIG_HOME/zsh"

#########
# fonts #
#########
mkdir -p "$XDG_DATA_HOME"
# correr `fc-cache -f` para actualizar cuando se agregan nuevas
# `fc-list` para ver las que hay
# xrdb -merge .Xresources
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
# dunst #
#########
mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc" 

#######
# git #
#######
# el pager precisa pacman -S diff-so-fancy
ln -sf "$XDG_CONFIG_HOME/git/.gitconfig" "$HOME/.gitconfig"
