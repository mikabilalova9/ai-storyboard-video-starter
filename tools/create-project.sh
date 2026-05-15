#!/bin/bash
# Создание нового проекта из шаблона
# Использование: tools/create-project.sh название-проекта

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
TEMPLATE_DIR="$ROOT_DIR/templates/project-template"
PROJECTS_DIR="$ROOT_DIR/projects"

if [ -z "$1" ]; then
  echo "❌ Укажите название проекта."
  echo "Использование: tools/create-project.sh название-проекта"
  exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -d "$PROJECT_DIR" ]; then
  echo "❌ Проект '$PROJECT_NAME' уже существует."
  exit 1
fi

echo "📁 Создаю проект: $PROJECT_NAME"
cp -r "$TEMPLATE_DIR" "$PROJECT_DIR"

echo "✅ Проект создан: $PROJECT_DIR"
echo ""
echo "Следующие шаги:"
echo "  1. Откройте $PROJECT_DIR"
echo "  2. Начните с 01-creative-brief/"
echo "  3. Напишите креативный бриф в attempts/"
echo ""
echo "Или скажите Claude Code:"
echo "  Помоги написать креативный бриф для моего видеопроекта."
