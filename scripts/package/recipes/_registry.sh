if ! ${DOT_REGISTRY_SOURCED:-false}; then
  for file in $DOTFILES_PATH/scripts/package/recipes/{cargo,docpars}.sh; do
    source "$file"
  done
  unset file

  readonly DOT_REGISTRY_SOURCED=true
fi

registry::install() {
  local -r installation_command="$1::install"

  if [ "$(command -v "$installation_command")" ]; then
    "$installation_command"
  else
    return 1
  fi
}

registry::is_installed() {
  local -r is_installed_command="$1::is_installed"

  if [ "$(command -v "$is_installed_command")" ]; then
    "$is_installed_command"
  else
    return 1
  fi
}