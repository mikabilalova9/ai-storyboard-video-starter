#!/bin/bash
# Сохранение прогресса на GitHub
# Использование: tools/save-to-github.sh "Сообщение коммита"

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

MESSAGE="${1:-Сохранить прогресс проекта}"

echo "📦 Сохраняю прогресс на GitHub..."

git add -A
git commit -m "$MESSAGE" || echo "⚠️  Нет изменений для коммита."
git push origin main || git push origin master

echo "✅ Прогресс сохранён на GitHub!"
