#!/usr/bin/env bash

. $DOTFILES_PATH/scripts/core/utils.sh

if ! command_exists fzf; then
  _e "fzf not installed, trying to install"

  if command_exists apt; then
    _a "Installing using apt"
    sudo apt -y install fzf 2>&1 | _log "Installing fzf"
  elif command_exists dnf; then
    _a "Installing using dnf"
    sudo dnf -y install fzf 2>&1 | _log "Installing fzf"
  elif command_exists brew; then
    _a "Installing using brew"
    yes | brew install fzf 2>&1 | $(brew --prefix)/opt/fzf/install | _log "Installing fzf"
  elif command_exists pacman; then
    _a "Installing using pacman"
    sudo pacman -S --noconfirm fzf 2>&1 | _log "Installing fzf"
  else
    _e "Could not install fzf, no package provider found"
    exit 1
  fi
fi