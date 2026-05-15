#!/bin/bash
# Копирование демо-примера в папку проектов
# Использование: tools/setup-demo.sh название [--open]

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
EXAMPLE_DIR="$ROOT_DIR/examples/demo-product-video"
PROJECTS_DIR="$ROOT_DIR/projects"

PROJECT_NAME="${1:-demo-walkthrough}"
PROJECT_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -d "$PROJECT_DIR" ]; then
  echo "⚠️  Проект '$PROJECT_NAME' уже существует. Пропускаю."
  exit 0
fi

echo "📁 Копирую демо-пример в projects/$PROJECT_NAME..."
cp -r "$EXAMPLE_DIR" "$PROJECT_DIR"
echo "✅ Демо-проект создан: $PROJECT_DIR"

if [ "$2" = "--open" ]; then
  if command -v open &> /dev/null; then
    open "$PROJECT_DIR"
  elif command -v xdg-open &> /dev/null; then
    xdg-open "$PROJECT_DIR"
  fi
fi
