dot-widget() {
  "$DOTFILES_PATH/bin/dot"
}

zle -N dot-widget
bindkey '^f' dot-widget
