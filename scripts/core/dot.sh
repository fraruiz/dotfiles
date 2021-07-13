dot::list_contexts() {
  dotfiles_contexts=$(ls "$DOTFILES_PATH/scripts")

  echo "$dotfiles_contexts" | grep -v core | sort -u
}

dot::list_context_scripts() {
  context="$1"

  dotfiles_scripts=$(ls -p "$DOTFILES_PATH/scripts/$context" 2>/dev/null | grep -v '/')

  echo "$dotfiles_scripts" | sort -u
}

dot::list_scripts() {
  _list_scripts() {
    scripts=$(dot::list_context_scripts "$1" | xargs -I_ echo "dot $1 _")

    echo "$scripts"
  }

  dot::list_contexts | coll::map _list_scripts
}

dot::list_scripts_path() {
  dotfiles_contexts=$(find "$DOTFILES_PATH/scripts" -type f -not -name "*.sh")

  printf "%s\n%s" "$dotfiles_contexts" | sort -u
}
