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
}

install_linux_custom() {
  echo
}