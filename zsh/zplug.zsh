#--------------------------------------
# plugins
#--------------------------------------

# Source of zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"

# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"

# 補完
zplug "zsh-users/zsh-autosuggestions"
# ~/.zplug/repos/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zshに以下を設定する
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

zplug "zsh-users/zsh-completions"
# zplug "chrissicool/zsh-256color"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

#--------------------------------------
# Command history configuration
#--------------------------------------
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups  # ignore duplication command history list
setopt hist_ignore_space # ignore when commands starts with space
setopt share_history     # share command history data

function peco_select_history() {
  BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco_select_history
bindkey '^r' peco_select_history

#--------------------------------------
# change directory you visit recently
#--------------------------------------
source ~/.zsh.d/z.sh

function peco_recentd() {
  rd=`z -l | sort -nr | peco | awk '{ print $2 }'`
  if [ -n "$rd" ]; then
    BUFFER+="cd $rd"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N peco_recentd
bindkey '^x' peco_recentd

#--------------------------------------
# ghq directory
#--------------------------------------
function select_ghq_cd() {
  repo=`ghq list --full-path | peco | awk '{ print $1 }'`

  if [ -n "$repo" ]; then
    BUFFER+="cd $repo"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N select_ghq_cd
bindkey '^g' select_ghq_cd


# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load
