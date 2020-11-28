# Karabinerの設定方法

Karaviner-ElementsのComplex ModificationsのAdd ruleから設定する。

https://pqrs.org/osx/karabiner/complex_modifications/

上記にアクセスし、以下をimportし、enableにする。

- Vi Mode
- Quit application by pressing command-q twice
- Change ctrl+KANA key to Escape key

vi modeについては、[ここ](https://github.com/tekezo/Karabiner-Elements/issues/1593#issuecomment-433881397)で設定している内容を`300`としたらちゃんと反応してくれた。


## 自分の設定

```sh
ln -s $CONFIG/karabiner/ctrl-kana-to-esc.json $HOME/.config/karabiner/assets/complex_modifications/ctrl-kana-to-esc.json
ln -s $CONFIG/karabiner/ctrl-m-to-enter.json $HOME/.config/karabiner/assets/complex_modifications/ctrl-m-to-enter.json
```

`complex_modifications`配下にjsonを配置すると、Complex ModificationsのAdd ruleで表示されるようになる。
表示後、`Enable`にする。

## ボツ

```xml
   <!-- ctrl + m : new line -->
   <list>
    <item>
    <name>Ctrl-L+M also works as NewLine</name>
    <identifier>private.ctrl_M_to_newline</identifier>
    <autogen>__KeyToKey__
         KeyCode::M, ModifierFlag::CONTROL_L,
         KeyCode::ENTER
    </autogen>
  </item>
  </list>
```
