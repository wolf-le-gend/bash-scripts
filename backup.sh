#!/bin/bash

# バックアップディレクトリ
BACKUP_DIR="backup"
LOG_DIR="logs"

# バックアップファイルの作成
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
mkdir -p $BACKUP_DIR
tar -czf "$BACKUP_DIR/log_backup_$TIMESTAMP.tar.gz" $LOG_DIR/*.log

echo "バックアップを作成しました: log_backup_$TIMESTAMP.tar.gz"
