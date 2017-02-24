sample-rails-docker
====

railsアプリをdockerイメージ化するサンプル

## 環境

- Docker version 1.13.1, build 092cba3
- docker-machine version 0.9.0, build 15fd4c7
- docker-compose version 1.11.2, build unknown
- VirtualBox 5.1.10

## 開発時

dockerhost用意(初回のみ)

```sh
$ docker-machine create -d virtualbox s-rails
```

環境変数読み込ませる

```sh
$ eval $(docker-machine env s-rails)
```

ビルド

```sh
# 初回 or Gemfile or Gemfile.lockを編集した時buildする必要がある
$ docker-compose build
```

実行

```sh
$ docker-compose up -d
```

停止

```
$ docker-compose down -v
```

## 実行時に出る警告について

```
/usr/local/bundle/gems/activesupport-5.0.1/lib/active_support/xml_mini.rb:51: warning: constant ::Fixnum is deprecated
/usr/local/bundle/gems/activesupport-5.0.1/lib/active_support/xml_mini.rb:52: warning: constant ::Bignum is deprecated
/usr/local/bundle/gems/activesupport-5.0.1/lib/active_support/core_ext/numeric/conversions.rb:138: warning: constant ::Fixnum is deprecated
```

https://github.com/rails/rails/issues/28091
version 5.0.2で治るみたいなのでリリースされたら対応します
