#!/bin/user/env bash

source "$DOTFILES_PATH/symlinks/utils.sh"

ensure_if_exists_file ~/.inputrc
ln -s $DOTFILES_PATH/shell/.inputrc ~/.inputrc

    ~/.bash_profile: shell/bash/.bash_profile
    ~/.bashrc: shell/bash/.bashrc
    ~/.zimrc: shell/zsh/.zimrc
    ~/.zlogin: shell/zsh/.zlogin
    ~/.zshenv: shell/zsh/.zshenv
    ~/.zshrc: shell/zsh/.zshrc
    ~/.inputrc: shell/.inputrc