ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew
brew install iter2
brew install skype
brew install --caskroom=/Applications google-chrome  # sanbox機能を使うので/Applicationsに入れる必要がある
brew install google-drive
brew install google-japanese-ime
brew install bettertouchtool # ウィンドウリサイズとかのショートカットキー設定
brew install appcleaner #アプリのアンインストーラー
brew install flux #輝度調節
brew install bartender #タスクバーに一杯出てくるアイコンを収納してくれるアプリ
brew install slack
brew install alfred # spotlightの強化版みたいなやつ
brew install atom
brew install karabiner # キーリマップ
brew install symboliclinker
brew install nodejs
brew install git
brew install ghq
brew intall peco # fish上で、ctrl+rでコマンド履歴を呼び出すため
brew install hub

# fish
brew install fish
which fish | xargs chsh -s
## nos-standard shellのエラーのときのみ
## sudo echo 'usr/local/bin/fish' > /etc/shells
## oh-my-fish
curl -L http://get.oh-my.fish | fish
rm ~/.config/fish/config.fish
ln -s  $CONFIG/fish/config.fish ~/.config/fish/config.fish

## fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

## z (for fish)
## 最近移動したディレクトリをpecoで拾うため
fisher z


# zsh
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux
which zsh | xargs chsh -s

## zplug プラグイン管理のため
git clone https://github.com/zplug/zplug.git .zplug

## z for zsh
## 移動したディレクトリを覚えておくため
git clone https://github.com/rupa/z.git ~/.zsh.d


# git
git config --global user.name "cipepser"
git config --global user.email "respepic@gmail.com"
git config --global color.ui auto
git config --global alias.co checkout
rm ~/.gitconfig
ln -s $CONFIG/git/.gitconfig ~/.gitconfig

# atom
rm ~/.atom/keymap.cson
ln -s $CONFIG/atom/keymap.cson ~/.atom/keymap.cson

# npm
npm install -g jshint

# wireshark
# インストーラで入れた

# ctags
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"

# fzf
# ghqしたrepoへcdするために必要
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# mycli
brew install mycli
rm ~/.myclirc
ln -s $CONFIG/mycli/.myclirc ~/.myclirc