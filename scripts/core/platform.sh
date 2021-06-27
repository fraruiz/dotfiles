platform::command_exists() {
  type "$1" >/dev/null 2>&1
}

platform::is_macos() {
  [[ $(uname -s) == "Darwin" ]]
}

platform::is_macos_arm() {
  [[ $(uname -p) == "arm" ]]
}

platform::is_linux() {
  [[ $(uname -s) == "Linux" ]]
}

platform::is_wsl() {
  grep -qEi "(Microsoft|WSL|microsoft)" /proc/version &>/dev/null
}

platform::wsl_home_path() {
  wslpath "$(wslvar USERPROFILE 2>/dev/null)"
}

platform::ensure_environment(){
  if platform::is_macos; then
    platform::ensure_macos_environment
  else
    platform::ensure_linux_environment
  fi

  if ! platform::command_exists cargo; then
    echo "> Installing cargo 📦"
    curl https://sh.rustup.rs -sSf | sh
  fi

  export PATH="$HOME/.cargo/bin:$PATH"
}

platform::ensure_linux_environment(){
  echo ""
}

platform::ensure_macos_environment(){
  if ! platform::command_exists brew; then
    echo "> Installing brew 🍻"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    if platform::is_macos_arm; then
      export PATH="$PATH:/opt/homebrew/bin:/usr/local/bin"
    else
      export PATH="$PATH:/usr/local/bin"
    fi
  fi
}