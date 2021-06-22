#!/usr/bin/env bash

red='\033[0;31m'
green='\033[0;32m'
purple='\033[0;35m'
normal='\033[0m'

_w() {
  local -r text="${1:-}"
  echo -e "$text"
}
_a() { _w " > $1"; }
_e() { _a "${red}$1${normal}"; }
_s() { _a "${green}$1${normal}"; }
_q() { read -rp "🤔 $1: " "$2"; }

current_timestamp() { date +%s; }

command_exists() {
  type $1 >/dev/null 2>&1
}