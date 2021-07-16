snap::install() {
  sudo snap install "$@"
}

snap::update_all() {
    sudo snap refresh
}