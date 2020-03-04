# shell
alias ll='ls -l'
# alias la='ls -la'

# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'
alias gr='git rm'
alias gd='git diff'
alias gcho='git checkout'
alias gchob='git checkout -b'
alias gf='git '
alias gb='git branch -a'

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
alias bcli='bitcoin-cli'

# alias for directories
setopt auto_cd
setopt cdable_vars
hash -d gop=~/.go/src/github.com/cipepser
hash -d down=~/Downloads

# editor/IDE
alias idea='open -a "`ls -dt /Applications/IntelliJ\ IDEA*|head -1`"'
alias goland='open -a "`ls -dt /Applications/Goland.app|head -1`"'
alias code='open -a "`ls -dt /Applications/Visual\ Studio\ Code.app|head -1`"'

# exa
alias exa='exa -lha --git'
alias la='exa'
