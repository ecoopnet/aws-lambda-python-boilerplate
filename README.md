# AWS lambda boilerplate

## 環境
ローカル動作確認用 docker つき、python開発用ボイラープレートです。

## ファイル・フォルダ構造
- Makefile  ... デプロイ用zip作成、docker 実行用 Makefile
- exec_docker.sh ... docker実行用スクリプト(make run から参照されるもの)
- src/ 以下 ... デプロイ対象フォルダ
- out/
  - deploy.zip ... `make zip` で作成できるデプロイ用zipファイル


## テスト方法
```sh
make run
```

## デプロイ方法
以下のコマンドでzip作成して、手動アップロードします。

zip作成コマンド
```sh
make zip
```
out/deploy.zip が作成されるので、lambda console からアップロードしてください。

