#!/usr/bin/env bash

. $DOTFILES_PATH/scripts/core/utils.sh

if ! command_exists tldr; then
  _e "tldr not installed, trying to install"

  if command_exists apt; then
    _a "Installing using apt"
    sudo apt -y install tldr 2>&1
  elif command_exists dnf; then
    _a "Installing using dnf"
    sudo dnf -y install tldr 2>&1
  elif command_exists yum; then
    _a "Installing using yum"
    yes | sudo yum install tldr 2>&1
  elif command_exists brew; then
    _a "Installing using brew"
    yes | brew install tldr 2>&1
  elif command_exists pacman; then
    _a "Installing using pacman"
    sudo pacman -S --noconfirm tldr 2>&1
  else
    _e "Could not install tldr, no package provider found"
    exit 1
  fi
fi