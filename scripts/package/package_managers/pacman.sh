pacman::install() {
  if platform::command_exists yay; then
    sudo yay -S --noconfirm "$@"
  else
    sudo pacman -S --noconfirm "$@"
  fi
}

pacman::update_all() {
  if platform::command_exists yay; then
    sudo yay -Syu
  else
    sudo pacman -Syu
  fi
}