#--------------------------------------
# plugins
#--------------------------------------

# Source of zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# TODO: theme選び
# theme (https://github.com/sindresorhus/pure#zplug)
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"

# zplug "yous/lime"

# zplug "mollifier/anyframe"

# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"

# # history関係
# zplug "zsh-users/zsh-history-substring-search"

# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"

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

# TODO: 実装する
source ~/.zsh.d/z.sh

function peco_recentd() {
  
    # やりたい処理
    # if [[ $PWD = $HOME ]];then
    #   cd $(find . -maxdepth 3 -type d ! -path "*/.*" | cat | peco | sed "s|~|$HOME|")
    # else
    #   cd $(find . -maxdepth 4 -type d ! -path "*/.*" | cat | peco | sed "s|~|$HOME|")
    # fi
    # キー実行時のプロンプトの内容は $BUFFER で取れる
    zle reset-prompt  # プロンプトを再描画
 }
zle -N peco_recentd  # my_functionをwidgetとして登録
bindkey '^x' peco_recentd # my_functionをCtrl-Aにバインド

#--------------------------------------
# ghq directory
#--------------------------------------


# TODO: 実装する






# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load
