# config
個人的な設定ファイルの置き場です

## Mac
`mac_init.sh`から復旧

### インストーラを使う
- dropbox
- chrome
- vscode
- atom
- 1password
- iterm2
- google日本語入力
- googleバックアップ
- appcleaner
- slack
- alfred
- bettertouchtool: システム環境設定のユーザとグループで起動時に自動的に開くよう追加
- karabiner
- firefox
- discord
- skype
- brave browser
- wireshark
- clipy
- vagrant
- virtualbox
- goland
- idea
- docker for mac
- line

### iterm2

Preferences -> Profiles -> General -> Working Directory  
で`Reuse previous session's directory`を選択

Preferences -> Appearance  
で`Show tab bar even when there is only one tab`を選択

Preferences -> Profile -> Text  
で`Vertial bar`と`Blinking cursor`を選択

[Mac iTerm で iceberg のテーマを使う \- Qiita](https://qiita.com/tarosaiba/items/fcc399006025ebe9152c)を参考にカラーテーマを変更。

Preferences -> Profiles -> Terminal -> Notifications
で`Silence bell`を選択

### sshの設定

- 鍵を生成して、githubに登録（`~/.ssh/config`も`HostName`, `IdentityFile`, `User`を設定。 [github](https://docs.github.com/ja/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/authorizing-an-ssh-key-for-use-with-saml-single-sign-on)側で `Enable SSH` が必要なことに注意）


### VS code

[ブログ](https://cipepser.hatenablog.com/entry/setting-for-vscode)にまとめてある。
→2022/7/29現在、Githubアカウント経由でSettings Syncを利用しているので手動設定不要