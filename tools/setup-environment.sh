#!/bin/bash
# Настройка окружения для новичка
# Использование: tools/setup-environment.sh [--open]

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "🚀 Настройка окружения AI Раскадровка..."
echo ""

# Создаём демо-проект
echo "📁 Создаю демо-проект..."
bash "$SCRIPT_DIR/setup-demo.sh" demo-walkthrough

# Создаём пустой первый проект
echo "📁 Создаю ваш первый проект..."
bash "$SCRIPT_DIR/create-project.sh" my-first-video

echo ""
echo "✅ Окружение готово!"
echo ""
echo "Созданные проекты:"
echo "  projects/demo-walkthrough/  — готовый пример для изучения"
echo "  projects/my-first-video/    — пустой проект для вашего видео"
echo ""

# Открыть в Finder/Explorer если указан флаг --open
if [ "$1" = "--open" ]; then
  if command -v open &> /dev/null; then
    open "$ROOT_DIR/projects/"
    echo "📂 Папка проектов открыта в Finder."
  elif command -v xdg-open &> /dev/null; then
    xdg-open "$ROOT_DIR/projects/"
    echo "📂 Папка проектов открыта."
  elif command -v explorer.exe &> /dev/null; then
    explorer.exe "$ROOT_DIR/projects/"
    echo "📂 Папка проектов открыта в Explorer."
  fi
fi

echo ""
echo "Начните с изучения: projects/demo-walkthrough/"
echo "Затем откройте: projects/my-first-video/"
