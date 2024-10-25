# Ruby 3.2.3をベースイメージとして使用
FROM ruby:3.2.3

# 環境変数の設定（ロケールとタイムゾーン）
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

# 必要なパッケージをインストール
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
       ca-certificates \
       curl \
       gnupg \
       build-essential \
       libpq-dev \
       vim

# アプリケーション用のディレクトリ作成
RUN mkdir /myapp

# 作業ディレクトリの設定
WORKDIR /myapp

# Bundlerをインストール
RUN gem install bundler

# ホストの現在のディレクトリをコンテナの/myappにコピー
COPY . /myapp

# ビルドキャッシュを減らすために最後にcleanを実行
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

