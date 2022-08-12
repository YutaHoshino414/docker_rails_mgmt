# README

## Docker+MySQL+Railsの開発環境
こちらを参考にrails立ち上げまでを試みる  
[参考](https://alterbo.jp/blog/ryu3-2106/)


### エラー等
rails versionを変えたからかもしれないが、
```
# rails s -b 0.0.0.0

:
/usr/local/bundle/gems/webpacker-5.4.3/lib/webpacker/ </br>
configuration.rb:103:in `rescue in load': Webpacker  </br>  
configuration file not found /RailsMySQLSample/config/webpacker.yml. 
Please run rails webpacker:install Error: No such file or directory @ rb_check_realpath_internal - /RailsMySQLSample/config/webpacker.yml (RuntimeError)
```
[rails sでサーバーを起動しようとしたら、Webpacker configuration file not foundエラーが発生した時の対処方法](https://qiita.com/yokota02210301/items/46f44af5787a1a492bd4)
```
# rails webpacker:install
=>
Webpacker requires Yarn ">=1 <4" and you are using 0.32+git
Please upgrade Yarn https://yarnpkg.com/lang/en/docs/install/
```
  
yarnのバージョン確認
```
# yarn --version
0.32+git
```
yarn update [参考](https://classic.yarnpkg.com/lang/en/docs/cli/self-update/)

```
(npmは入れていないので)

# curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

# yarn --version
 => 0.32+git    (変わってない)
```
### パスを通す
```
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# yarn --version
1.22.19

# rails webpacker:install
:
Webpacker successfully installed 🎉 🍰
```