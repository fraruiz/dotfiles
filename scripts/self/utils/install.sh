#!/bin/user/env bash

install_macos_custom() {
  output::answer "Installing needed gnu packages"

  for package in coreutils make gnu-sed findutils bat hyperfine mas; do
    if ! brew list $1 &>/dev/null; then
      output::answer "Installing $package"
      log::file "Installing brew $package"
      brew install $1
    fi
    output::write "✅ $package installed"
  done
}

install_linux_custom() {
  echo
}