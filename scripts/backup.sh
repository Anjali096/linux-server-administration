#!/bin/bash

SOURCE="/var/www/html"
DEST="$HOME/linux-server-administration/backups"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$DEST"

tar -czf "$DEST/web_backup_$DATE.tar.gz" "$SOURCE"

echo "Backup created:"
echo "$DEST/web_backup_$DATE.tar.gz"
