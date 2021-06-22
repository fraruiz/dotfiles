git-delta::install() {
  "$DOTFILES_PATH/bin/dot" package add git-delta --skip-recipe
}

git-delta::is_installed() {
  platform::command_exists delta
}
