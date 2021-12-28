#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
# -f es de force, si ya existe el link lo borra y recrea
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

#######
# X11 #
#######
rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"

########
#  i3  #
########
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config" 

#######
# zsh #
#######
mkdir -p "$HOME/.config/zsh"
# -f es de force, si ya existe el link lo borra y recrea
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases.zsh" "$HOME/.config/zsh/aliases.zsh"
ln -sf "$HOME/dotfiles/zsh/scripts.zsh" "$HOME/.config/zsh/scripts.zsh"

rm -rf "$HOME/.config/zsh/external"
ln -s "$HOME/dotfiles/zsh/external/" "$HOME/.config/zsh"
