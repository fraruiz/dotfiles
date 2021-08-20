#!/bin/user/env bash

brew_install() {
  if brew list $1 &>/dev/null; then
    brew install $1
  else
    output::answer "Installing $1"
    brew install $1
  fi

  output::write "✅  $1 installed"
}

install_macos_custom() {
  output::answer "Installing needed gnu packages"
  brew_install bash | log::file "Installing brew bash"
  brew_install zsh | log::file "Installing brew zsh"
  brew_install coreutils | log::file "Installing brew coreutils"
  brew_install make | log::file "Installing brew make"
  brew_install gnu-sed | log::file "Installing brew gnu-sed"
  brew_install findutils | log::file "Installing brew findutils"
  brew_install bat | log::file "Installing brew bat"
  brew_install hyperfine | log::file "Installing brew hyperfine"

  output::answer "Installing mas"
  brew_install mas | log::file "Installing mas"
}

install_linux_custom() {
  echo
}