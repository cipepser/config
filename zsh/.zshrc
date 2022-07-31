export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

#-----------------------------------------------------
# import external config files
#-----------------------------------------------------
## set PATH to configuration files
export CONFIG=$HOME/Documents/config

source $CONFIG/zsh/env.zsh
source $CONFIG/zsh/alias.zsh
source $CONFIG/zsh/zplug.zsh
# source $CONFIG/zsh/prezto.zsh
source $CONFIG/zsh/env.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#-----------------------------------------------------
# general configuration for zsh
#-----------------------------------------------------
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## Completion configuration
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

## color for ls command
export CLICOLOR=1

# color
# autoload -U colors
# colors

# # prompt user@host color
# COLOR_USER="%{$fg_bold[blue]%}"
# COLOR_RESET="%{$reset_color%}"
# COLOR_RED="%{$fg[red]%}"
# COLOR_CYAN="%{$fg[cyan]%}"
# COLOR_PID="%{$fg[blue]%}"

# # prompt configuration
# PROMPT="${COLOR_USER}%n${COLOR_RESET}$ "
# PROMPT2="${COLOR_RED}%_> ${COLOR_RESET}"
# RPROMPT='[`rprompt-git-current-branch` %~]:${COLOR_CYAN}$(echo $$)${COLOR_RESET}'
# SPROMPT="${COLOR_RED}correct?: %R -> %r [n,y,a,e]:${COLOR_RESET}"

eval "$(direnv hook zsh)"