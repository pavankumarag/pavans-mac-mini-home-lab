#!/usr/bin/env bash
set -euo pipefail

: "${HOMELAB_ROOT:?HOMELAB_ROOT must be set (see .env)}"

DIRS=(
  "$HOMELAB_ROOT/data/nextcloud/db"
  "$HOMELAB_ROOT/data/nextcloud/app"
  "$HOMELAB_ROOT/data/nextcloud/files"
  "$HOMELAB_ROOT/data/immich/db"
  "$HOMELAB_ROOT/data/immich/model-cache"
  "$HOMELAB_ROOT/data/immich/library"
  "$HOMELAB_ROOT/data/paperless/redis"
  "$HOMELAB_ROOT/data/paperless/data"
  "$HOMELAB_ROOT/data/paperless/media"
  "$HOMELAB_ROOT/data/paperless/export"
  "$HOMELAB_ROOT/data/paperless/consume"
)

for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
  echo "created $dir"
done
