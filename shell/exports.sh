source "$DOTFILES_PATH/scripts/core/platform.sh"

# ------------------------------------------------------------------------------
# Theme config
# ------------------------------------------------------------------------------
export THEME_MINIMAL=false
export THEME_MODE="dark"
export THEME_PROMPT_IN_NEW_LINE=false

# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------
export GOPATH="$HOME/go"

# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
if [ "$THEME_MODE" = "dark" ]; then
  fzf_colors="pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934"
else
  fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
fi

export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"

# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
if platform::is_macos; then
  if platform::is_macos_arm; then
    export PATH="$PATH:/opt/homebrew/bin:/usr/local/bin"
  else
    export PATH="$PATH:/usr/local/bin"
  fi
fi

export path=(
  "$HOME/bin"
  "$DOTFILES_PATH/bin"
  "$HOME/.cargo/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/bin"
  "/usr/bin"
  "/usr/sbin"
  "/sbin"
)
