FROM ruby:2.4.0
MAINTAINER o.togana@gmail.com

WORKDIR /usr/src/app
EXPOSE 3000

RUN apt-get update && apt-get install -y \
      nodejs \
      mysql-client \
      postgresql-client \
      sqlite3 \
      --no-install-recommends && rm -rf /var/lib/apt/lists/*
