# Path to Oh My Fish install.
set -x OMF_PATH $HOME/.local/share/omf

# Customize Oh My Fish configuration path.
set -x OMF_CONFIG $HOME/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# theme for oh-my-fish
set fish_theme chain

# golang
set -x GOPATH $HOME/.go

# see command history by binding prco to Ctrl+r
set fish_plugins theme peco
function fish_user_key_bindings
  bind \cr peco_select_history
end

#-----------------------------------------------------
# Aliases
#-----------------------------------------------------
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
