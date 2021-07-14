#!/bin/user/env bash

current_timestamp() { date +%s; }

ensure_if_exists_file(){
  if [ -f $1 ]; then
      mv $1 $1.$(current_timestamp).back
  fi
}