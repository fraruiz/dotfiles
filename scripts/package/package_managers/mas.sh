mas::update_all() {
  outdated=$(mas outdated)

  if [ -z "$outdated" ]; then
    output::write "All mas packages up to date"
  else
    mas upgrade
  fi
}