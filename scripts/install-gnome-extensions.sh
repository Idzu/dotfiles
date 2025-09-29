#!/usr/bin/env bash
set -e

EXT_FILE="$HOME/.dotfiles/desktop/gnome/extensions.txt"

if [ ! -f "$EXT_FILE" ]; then
  echo "Файл $EXT_FILE не найден"
  exit 1
fi

echo ">>> Установка расширений из $EXT_FILE"

while IFS= read -r ext; do
  [ -z "$ext" ] && continue
  echo ">>> Проверяю $ext"

  if gnome-extensions info "$ext" >/dev/null 2>&1; then
    echo "Уже установлено: $ext"
  else
    echo "Расширение $ext не установлено. Нужно скачать вручную с https://extensions.gnome.org/extension/$ext/"
  fi
done < "$EXT_FILE"

echo ">>> Готово!"
