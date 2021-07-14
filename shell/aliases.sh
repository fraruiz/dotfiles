# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTFILES_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTFILES_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTFILES_PATH/bin/dot git pretty-log'

#Docker
alias dconn='$DOTFILES_PATH/bin/dot docker connect'
alias dps='$DOTFILES_PATH/bin/dot docker list_containers'
alias dprune='$DOTFILES_PATH/bin/dot docker prune'
alias dcup='$DOTFILES_PATH/bin/dot docker-compose up'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update'
alias ip='$DOTFILES_PATH/bin/dot network ip'
alias private_ip='$DOTFILES_PATH/bin/dot network private_ip'
alias wallpaper='$DOTFILES_PATH/bin/dot ui wallpaper'
alias projects='$DOTFILES_PATH/bin/dot utils projects'
alias uuid='$DOTFILES_PATH/bin/dot utils uuid_code'
alias date='$DOTFILES_PATH/bin/dot utils timestamp_to_date'