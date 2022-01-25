source "$DOTFILES_PATH/scripts/core/platform.sh"

# ------------------------------------------------------------------------------
# ZIMFW config
# ------------------------------------------------------------------------------
export ZIM_HOME="$DOTFILES_PATH/shell/zsh/.zim"

# ------------------------------------------------------------------------------
# Theme config
# ------------------------------------------------------------------------------
export THEME_MINIMAL=false
export THEME_MODE="dark"
export THEME_PROMPT_IN_NEW_LINE=false

# ------------------------------------------------------------------------------
# SDK MAN
# ------------------------------------------------------------------------------
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export SDKMAN_DIR="$HOME/.sdkman"


# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------
export GOPATH="$HOME/go"
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export ES_JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export M2_HOME="$HOME/.sdkman/candidates/maven/current"
export GRADLE_HOME="$HOME/.sdkman/candidates/gradle/current"

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
  "$JAVA_HOME/bin"
  "$GOPATH/bin"
  "$M2_HOME/bin"
  "$GRADLE_HOME/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/bin"
  "/usr/bin"
  "/usr/sbin"
  "/sbin"
)
