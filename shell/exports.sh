# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"

# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
export path=(
  "$HOME/bin"
  "$DOTFILES_PATH/bin"
  "/usr/local/bin"
  "/bin"
  "/usr/bin"
  "/usr/sbin"
  "/sbin"
)