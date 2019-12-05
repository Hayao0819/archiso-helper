#!/usr/bin/env bash

script_dir=./scripts

# 初期値読み込み
source ./initial.sh

# スクリプトを実行
run () { source $@; }

## タイトル
run $script_dir/start.sh

## 設定
run $script_dir/load-settings.sh

# ネット接続確認
run $script_dir/check-network.sh

# Rootチェック
run $script_dir/check-root.sh

# ディストリビューションチェック
run $script_dir/check-os.sh

# 作業ディレクトリチェック
run $script_dir/check-work-dir.sh

# Gitクローンディレクトリチェック
run $script_dir/check-git-dir.sh

# 出力先チェック
run $script_dir/check-image.sh

# ユーザーチェック
run $script_dir/check-user.sh

# Mirrorチェック
run $script_dir/check-mirror.sh

# デバッグ変数の表示
run $script_dir/show-debug.sh

# ArchISOインストール、アップグレード
run $script_dir/install-archiso.sh