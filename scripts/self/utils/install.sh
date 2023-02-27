#!/bin/user/env bash

install_macos_custom() {
  output::answer "Installing needed gnu packages"

  for package in coreutils make gnu-sed findutils bat hyperfine mas; do
    if ! brew list $package &>/dev/null; then
      output::answer "Installing $package"
      brew install $package | log::file "Installing brew $package"
    fi
    output::write "✅ $package installed"
  done
}

install_linux_custom() {
  echo
}

setup_git_identity() {
  output::answer "Setup your git identity"
  echo -n "Enter your email: "
  read email

  echo -n "Enter your user: "
  read user

  git config --global user.name "$user"
  git config --global user.email "$email"
}