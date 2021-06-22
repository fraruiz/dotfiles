#!/usr/bin/env bash

. $DOTFILES_PATH/scripts/core/utils.sh

if ! command_exists docker-compose; then
  _e "docker-compose not installed, trying to install"

  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 2>&1
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    _e "Docker Desktop for Mac includes Compose along with other Docker apps, so Mac users do not need to install Compose separately."
  else
    _e "Could not install git, no package provider found"
  fi
fi