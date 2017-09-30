#-----------------------------------------------------
# general configuration for zsh
#-----------------------------------------------------
## export original variable
export CONFIG=$HOME/Documents/config
source $CONFIG/zsh/env.zsh

# alias
source $CONFIG/zsh/alias.zsh

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## Completion configuration
autoload -U compinit
compinit

## color for ls command
export CLICOLOR=1

# color
# autoload -U colors
# colors
#
# # prompt user@host color
# COLOR_USER="%{$fg_bold[blue]%}"
# COLOR_RESET="%{$reset_color%}"
# COLOR_RED="%{$fg[red]%}"
# COLOR_CYAN="%{$fg[cyan]%}"
# COLOR_PID="%{$fg[blue]%}"
#
# # prompt configuration
# PROMPT="${COLOR_USER}%n${COLOR_RESET}$ "
# PROMPT2="${COLOR_RED}%_> ${COLOR_RESET}"
# RPROMPT='[`rprompt-git-current-branch` %~]:${COLOR_CYAN}$(echo $$)${COLOR_RESET}'
# SPROMPT="${COLOR_RED}correct?: %R -> %r [n,y,a,e]:${COLOR_RESET}"


#-----------------------------------------------------
# plugin manager
#-----------------------------------------------------

# source $CONFIG/zsh/prezto.zsh

source $CONFIG/zsh/zplug.zsh

