# shell
alias ll='ls -l'
alias la='ls -la'

# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias gr='git rm'
alias gd='git diff'

# docker
alias d='docker'
alias dm='docker-machine'
alias dp='docker ps'
alias di='docker images'
alias dc='docker-compose'

# kubernetes
alias k='kubectl'

# python
alias p='python'

# bitcoin core
alias bitd='bitcoind'
alias bitc='bitcoin-cli'

# alias for directories
setopt auto_cd
setopt cdable_vars
hash -d gop=~/.go/src/github.com/cipepser
hash -d down=~/Downloads