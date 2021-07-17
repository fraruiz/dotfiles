current_timestamp() { date +%s; }

create_if_not_exists_file(){
	[ ! -f "$1" ] && mkdir -p "$(dirname "$1")" && touch "$1"
}

ensure_if_exists_file(){
  [ -f "$1" ] && mv "$1" "$1".$(current_timestamp).back
}