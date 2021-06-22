#!/usr/bin/env bash

. $DOTFILES_PATH/scripts/core/utils.sh

if ! command_exists go; then
  _e "golang not installed, trying to install"

  if command_exists apt; then
    _a "Installing using apt"
    sudo apt -y install golang 2>&1
  elif command_exists dnf; then
    _a "Installing using dnf"
    sudo dnf -y install golang 2>&1
  elif command_exists yum; then
    _a "Installing using yum"
    yes | sudo yum install golang 2>&1
  elif command_exists brew; then
    _a "Installing using brew"
    yes | brew install golang 2>&1
  elif command_exists pacman; then
    _a "Installing using pacman"
    sudo pacman -S --noconfirm golang 2>&1
  else
    case "$OSTYPE" in
    darwin*)
      _a "Checking if Command Line Tools are installed 🕵️‍♂️"

      xcode-select --install 2>&1 | grep installed >/dev/null
      if [[ $? ]]; then
        _a "Installing Command Line Tools 📺"
        xcode-select --install
        _q "Press a key after command line tools has finished to continue...👇" "CLT_INSTALLED"
      fi
      ;;
    *)
      _e "Could not install golang, no package provider found"
      exit 1
      ;;
    esac
  fi
fi