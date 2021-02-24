# brew本体
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git -C "$(brew --repo homebrew/core)" fetch --unshallow

# ディレクトリ
mkdir $HOME/.go
mkdir $HOME/Documents/sand

# git（事前）
git config --global user.name "cipepser"
git config --global user.email "respepic@gmail.com"
git config --global color.ui auto
git config --global alias.co checkout

cd $HOME/Documents
git clone https://github.com/cipepser/config.git

# zsh
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux
which zsh | xargs chsh -s

## zplug プラグイン管理のため
cd $HOME
git clone https://github.com/zplug/zplug.git .zplug

## z for zsh
## 移動したディレクトリを覚えておくため
git clone https://github.com/rupa/z.git ~/.zsh.d

# /etc/shellsの末尾に`/usr/local/bin/zsh`を追記
chsh -s /usr/local/bin/zsh
exec $SHELL -l

# git
rm ~/.gitconfig
ln -s $CONFIG/git/.gitconfig ~/.gitconfig

# brew
brew install ghq
brew install peco
brew install nodejs
brew install hub
brew install jq
brew install go
brew install ripgrep
brew install direnv
brew install zplug
brew install tree
brew install gibo
brew install graphviz
brew install moreutils
brew install iproute2mac
brew install fd
brew install exa
brew install bat
brew install tokei

# ctags
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"

# zsh
rm $HOME/.zshrc
ln -s $HOME/Documents/config/zsh/.zshrc $HOME/.zshrc

# fzf
# ghqしたrepoへcdするために必要
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# peco
mkdir ~/.peco
ln -s $CONFIG/peco/config.json ~/.peco/config.json

# atom
rm ~/.atom/keymap.cson
ln -s $CONFIG/atom/keymap.cson ~/.atom/keymap.cson

# rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# udeps
cargo install cargo-udeps --locked

# karabiner
ln -s $CONFIG/karabiner/ctrl-kana-to-esc.json $HOME/.config/karabiner/assets/complex_modifications/ctrl-kana-to-esc.json

# カーソル速度
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 12

# 隠しファイルの表示
defaults write com.apple.finder AppleShowAllFiles TRUE 

# haskell
curl -sSL https://get.haskellstack.org/ | sh
