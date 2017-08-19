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
set -x PATH $PATH $GOPATH/bin

# rust
set -x PATH $PATH $HOME/.cargo/bin

# python
set -x PATH $PATH /usr/local/opt/python/libexec/bin

set fish_plugins theme peco

function fish_user_key_bindings
  # see command history by binding prco to Ctrl+r
  bind \cr peco_select_history
  
  # move the directory which is cloned by ghq
  bind \cg select_ghq_cd
  
  # move to the recent directory
  bind \cx peco_recentd
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

# python
alias p='python'