#!/bin/user/env bash

install_macos_custom() {
  output::answer "Installing needed gnu packages"

  for package_manager in coreutils make gnu-sed findutils bat hyperfine mas; do
    if ! brew list $1 &>/dev/null; then
      output::answer "Installing $1"
      log::file "Installing brew $1"
      brew install $1
    fi
    output::write "✅ \`$1\` installed"
  done
}

install_linux_custom() {
  echo
}