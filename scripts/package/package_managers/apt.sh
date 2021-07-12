apt::install() {
  sudo apt-get -y install "$@"
}

apt::update_all() {
  apt::update
  apt::upgrade
}

apt::update() {
  sudo apt-get -y update
}

apt::upgrade() {
  sudo apt-get -y upgrade
}