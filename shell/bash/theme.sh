PROMPT_COMMAND="theme"

MIDDLE_CHARACTER="λ"
GREEN_COLOR="32"
RED_COLOR="31"

theme() {
  LAST_CODE="$?"
  current_dir=$(dot filesystem short-pwd)
  STATUS_COLOR=$GREEN_COLOR

  if [ $LAST_CODE -ne 0 ]; then
    STATUS_COLOR=$RED_COLOR
    MIDDLE_CHARACTER="Λ"
  fi

  export PS1="\[\e[${STATUS_COLOR}m\]${MIDDLE_CHARACTER}\[\e[${STATUS_COLOR}m\] \[\e[33m\]${current_dir}\[\e[m\] "
}