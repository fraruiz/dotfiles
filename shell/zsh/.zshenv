export DOTFILES_PATH="$HOME/.dotfiles"

# Prevent system from initializing compinit before zimfw
skip_global_compinit=1

# Add custom completions to fpath early, before zimfw initializes completion
# This ensures completions are available but doesn't trigger automatic compinit
fpath=("$DOTFILES_PATH/shell/zsh/completions" $fpath)