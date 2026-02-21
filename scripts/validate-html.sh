#!/bin/bash
# Скрипт для валидации HTML

set -e

echo "🔍 Валидация HTML файлов..."

# Скачивание валидатора, если его нет
VNU_JAR="vnu.jar"
if [ ! -f "$VNU_JAR" ]; then
    echo "📥 Скачивание HTML валидатора..."
    curl -L -o $VNU_JAR https://github.com/validator/validator/releases/latest/download/vnu.jar
fi

# Валидация HTML файлов
if [ -d "site" ]; then
    echo "🔎 Проверка HTML файлов в директории site/..."
    java -jar $VNU_JAR --skip-non-css --skip-non-html --format json site/*.html site/**/*.html || true
    echo "✅ Валидация HTML завершена"
else
    echo "❌ Директория site/ не найдена. Сначала выполните mkdocs build"
    exit 1
fi