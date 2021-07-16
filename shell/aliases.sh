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
alias gc='dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gr='git restore .'
alias gl='dot git pretty-log'
alias ga='dot git amend'
alias gundo='dot git undo'
alias gdiscard='dot git discard'

#Docker
alias dconn='dot docker connect'
alias dps='dot docker list_containers'
alias dexec='dot docker exec'
alias dprune='dot docker prune'
alias dcup='dot docker-compose up'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update'
alias ip='dot network ip'
alias private-ip='dot network ip -p'
alias list-projects='dot filesystem list_projects'