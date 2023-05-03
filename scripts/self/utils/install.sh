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