#!/usr/bin/env bash


#!/usr/bin/env bash

. $DOTFILES_PATH/scripts/core/utils.sh

if ! command_exists docker; then
  _e "docker not installed, trying to install"

  bash <(curl -s https://get.docker.com/)
fi