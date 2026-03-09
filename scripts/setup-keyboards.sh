#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

sudo install -Dm644 \
  "$ROOT_DIR/system/etc/modprobe.d/hid_apple.conf" \
  /etc/modprobe.d/hid_apple.conf

sudo mkinitcpio -P