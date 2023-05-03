git::is_in_repo() {
  git rev-parse HEAD >/dev/null 2>&1
}

git::current_branch() {
  git branch
}

git::setup_identity() {
  output::answer "Setup your git identity"
  echo -n "Enter your email: "
  read email

  echo -n "Enter your user: "
  read user

  git config --global user.name "$user"
  git config --global user.email "$email"
}
