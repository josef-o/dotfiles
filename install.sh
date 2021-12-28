#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
# -f es de force, si ya existe el link lo borra y recrea
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"

########
#  i3  #
########
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config" 
