#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# git 
alias g='git'
alias ga='git add'

alias gc='git commit'
alias gp='git push'
alias gs='git status'

# docker
alias d='docker'
alias dm='docker-machine'
alias dp='docker ps'
alias di='docker images'

# golang
export GOPATH=$HOME/.go

# SSLLOG for wireshark
export SSLKEYLOGFILE=/Users/respepic/Documents/vagrant/div3element/premaster.txt
