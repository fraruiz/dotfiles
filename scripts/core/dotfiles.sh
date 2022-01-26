dotfiles::list_bash_files() {
  grep "#!/usr/bin/env bash" "$DOTFILES_PATH"/{bin,scripts,shell,installer,restorer} -R | awk -F':' '{print $1}'
  find "$DOTFILES_PATH"/{bin,scripts,shell} -type f -name "*.sh"
}