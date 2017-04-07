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
# schemeの生成(必要時に実行)
$ docker-compose run --rm app rake db:create
# migrate(必要時に実行)
$ docker-compose run --rm app rake db:migrate
```

停止

```
$ docker-compose down -v
```

