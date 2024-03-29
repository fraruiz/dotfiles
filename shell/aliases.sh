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
alias gco="dot git checkout"
alias gcob="git checkout -b"
alias gd='dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gr='git restore .'
alias grh='git reset --hard'
alias gl='dot git pretty-log'
alias ga='dot git amend'
alias gb="git branch"
alias gbfeature='dot git feature'
alias gbfix='dot git fix'
alias gbhotfix='dot git hotfix'
alias gbenhancement='dot git enhancement'
alias gbrelease='dot git release'

#Docker
alias dconn='dot docker connect'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dexec='dot docker exec'
alias dprune='dot docker prune'
alias dstart='dot docker start'
alias dstop='dot docker stop'
alias dreset='dot docker reset'
alias dfix='dot docker fix'
alias drm='dot docker rm'
alias dcup='docker-compose up -d'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update'
alias ip='dot network ip'
alias private-ip='dot network ip -p'
alias projects='dot dev projects'
