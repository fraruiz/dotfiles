#!/usr/bin/env zsh

THEME_MODE=${THEME_MODE:-"light"}
THEME_PROMPT_IN_NEW_LINE=${THEME_PROMPT_IN_NEW_LINE:-false}

[[ $(echotc Co) -gt 100 ]] && support_color_tones=true || support_color_tones=false

status_icon_ok="λ"
status_icon_ko="Λ"
git_no_changes_status="✓"
git_dirty_status="✗"

git_branch_color="green"
git_dirty_status_color="yellow"
git_no_changes_status_color="white"
git_on_branch_color="white"
pwd_color="yellow"
status_icon_color="white"

local prompt_status="%(?:%F{green}$status_icon_ok:%F{red}$status_icon_ko)"

local -r prompt_short_dir=$("$DOTFILES_PATH/bin/dot" filesystem short-pwd)
local prompt_pwd="%F{$pwd_color}${prompt_short_dir}"

local prompt_git_branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

prompt_status() {
  print -n "%(?:%F{green}$status_icon_ok:%F{red}$status_icon_ko)"
}

prompt_pwd() {
  local -r prompt_short_dir=$("$DOTFILES_PATH/bin/dot" filesystem short-pwd)
  print -n "%F{$pwd_color}${prompt_short_dir}"
}

prompt_git() {
  inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

  if [ "$inside_git_repo" ]; then
    branch_name=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    git_branch="%F{$git_branch_color}$branch_name"

    git_status="%F{$git_no_changes_status_color}$git_no_changes_status"
    changed=$(git status --porcelain)
    if [ -n "${changed}" ]; then
        git_status="%F{$git_dirty_status_color}$git_dirty_status"
    fi

    print -n "%f on $git_branch $git_status"
  fi
}

setopt prompt_subst

PROMPT='$(prompt_status) $(prompt_pwd)$(prompt_git) %f'