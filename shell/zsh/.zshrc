export DOTFILES_PATH="$HOME/.dotfiles"

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
setopt +o nomatch
# setopt autopushd

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

# Prevent automatic compinit initialization before zimfw loads
autoload -Uz compinit
if [[ -z "$skip_global_compinit" ]]; then
  skip_global_compinit=1
fi

source "$DOTFILES_PATH/shell/init.sh"

source "$DOTFILES_PATH/shell/zsh/zim.zsh"
source "$DOTFILES_PATH/shell/zsh/bindings/dot.zsh"
source "$DOTFILES_PATH/shell/zsh/bindings/reverse_search.zsh"
source "$DOTFILES_PATH/shell/zsh/key-bindings.zsh"

source "$DOTFILES_PATH/shell/zsh/theme.sh"