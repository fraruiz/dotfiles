yum::install() {
  yes | sudo yum install "$@"
}

yum::update_all() {
  yes | sudo yum update 
}