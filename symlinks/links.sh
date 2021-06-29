#!/bin/user/env bash

source "$DOTFILES_PATH/symlinks/utils.sh"

ensure_if_exists_file ~/.inputrc
ln -s $DOTFILES_PATH/shell/.inputrc ~/.inputrc

ensure_if_exists_file ~/.zimrc
ln -s $DOTFILES_PATH/shell/zsh/.zimrc ~/.zimrc

ensure_if_exists_file ~/.bashrc
ln -s $DOTFILES_PATH/shell/bash/.bashrc ~/.bashrc

ensure_if_exists_file ~/.bash_profile
ln -s $DOTFILES_PATH/shell/bash/.bash_profile ~/.bash_profile

ensure_if_exists_file ~/.zlogin
ln -s $DOTFILES_PATH/shell/zsh/.zlogin ~/.zlogin

ensure_if_exists_file ~/.zshenv
ln -s $DOTFILES_PATH/shell/zsh/.zshenv ~/.zshenv

ensure_if_exists_file ~/.zshrc
ln -s $DOTFILES_PATH/shell/zsh/.zshrc ~/.zshrc

ensure_if_exists_file ~/.gitattributes
ln -s $DOTFILES_PATH/git/.gitattributes ~/.gitattributes

ensure_if_exists_file ~/.gitconfig
ln -s $DOTFILES_PATH/git/.gitconfig ~/.gitconfig

ensure_if_exists_file ~/.gitignore_global
ln -s $DOTFILES_PATH/git/.gitignore_global ~/.gitignore_global

ensure_if_exists_file ~/.vimrc
ln -s $DOTFILES_PATH/editors/.vimrc ~/.vimrc
