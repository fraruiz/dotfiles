#!/bin/user/env bash

install_macos_custom() {
  if ! platform::command_exists brew; then
    output::error "brew not installed, installing"

    if [ "$DOTLY_ENV" == "CI" ]; then
      export CI=1
    fi

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  if platform::is_macos_arm; then
    export PATH="$PATH:/opt/homebrew/bin:/usr/local/bin"
  else
    export PATH="$PATH:/usr/local/bin"
  fi

  mkdir -p "$HOME/bin"

  output::answer "Installing needed gnu packages"
  brew list bash || brew install bash | log::file "Installing brew bash"
  brew list zsh || brew install zsh | log::file "Installing brew zsh"
  brew list coreutils || brew install coreutils | log::file "Installing brew coreutils"
  brew list make || brew install make | log::file "Installing brew make"
  brew list gnu-sed || brew install gnu-sed | log::file "Installing brew gnu-sed"
  brew list findutils || brew install findutils | log::file "Installing brew findutils"
  brew list bat || brew install bat | log::file "Installing brew bat"
  brew list hyperfine || brew install hyperfine | log::file "Installing brew hyperfine"

  output::answer "Installing mas"
  brew list mas || brew install mas | log::file "Installing mas"
}

install_java(){
  if ! platform::command_exists java; then
    if platform::command_exists apt; then
      sudo apt -y install default-jdk default-jre 2>&1 | log::append "Installing java"
    elif platform::command_exists dnf; then
      sudo dnf -y install default-jdk default-jre 2>&1 | log::append "Installing java"
    elif platform::command_exists yum; then
      yes | sudo yum install default-jdk default-jre 2>&1 | log::append "Installing java"
    elif platform::command_exists brew; then
      yes | brew install openjdk 2>&1 | log::append "Installing java"
    elif platform::command_exists pacman; then
      sudo pacman -S --noconfirm default-jdk default-jre 2>&1 | log::append "Installing java"
    fi
  fi
}

install_golang(){
  if ! platform::command_exists go; then
    if platform::command_exists apt; then
      sudo apt -y install golang 2>&1 | log::append "Installing golang"
    elif platform::command_exists dnf; then
      sudo dnf -y install golang 2>&1 | log::append "Installing golang"
    elif platform::command_exists yum; then
      yes | sudo yum install golang 2>&1 | log::append "Installing golang"
    elif platform::command_exists brew; then
      yes | brew install go 2>&1 | log::append "Installing golang"
    elif platform::command_exists pacman; then
      sudo pacman -S --noconfirm golang 2>&1 | log::append "Installing golang"
    fi
  fi
}