dnf::install() {
  sudo dnf -y install "$@"
}

dnf::update_all() {
  sudo dnf -y upgrade
}