#!/bin/user/env bash

install_macos_custom() {
  output::answer "Installing needed gnu packages"
  brew install coreutils | log::file "Installing brew coreutils"
  brew install make | log::file "Installing brew make"
  brew install gnu-sed | log::file "Installing brew gnu-sed"
  brew install findutils | log::file "Installing brew findutils"
  brew install bat | log::file "Installing brew bat"
  brew install hyperfine | log::file "Installing brew hyperfine"
  brew install gnupg | log::file "Installing brew gnupg"

  output::answer "Installing mas"
  brew install mas | log::file "Installing mas"
}

install_linux_custom() {
  output::answer "Installing needed gnu packages"
  script::depends_on xclip vim
  echo "✅ Done"
}