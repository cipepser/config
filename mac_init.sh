ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew
brew cask install iter2

brew cask install skype
brew cask install --caskroom=/Applications google-chrome  # 機能を使うので/Applicationsに入れる必要がある
brew cask install google-drive
brew cask install google-japanese-ime

brew cask install bettertouchtool # ウィンドウリサイズとかのショートカットキー設定
brew cask install appcleaner #アプリのアンインストーラー
brew cask install flux #輝度調節
brew cask install bartender #タスクバーに一杯出てくるアイコンを収納してくれるアプリ
brew cask install slack
brew cask install alfred # spotlightの強化版みたいなやつ
brew cask install atom
brew cask install karabiner # キーリマップ

brew cask install symboliclinker
brew install nodejs

# git
git config --global user.name "cipepser"
git config --global user.email "respepic@gmail.com"
git config --global color.ui auto
git config --global alias.co checkout

# npm
npm install -g jshint

# wireshark
# インストーラで入れた

# ctags
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
 