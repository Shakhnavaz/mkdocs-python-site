# mkdocs-python-site

markdown
# Статический сайт на Python

Статический сайт, сгенерированный с помощью Python-движка для генерации статических сайтов.

## 📋 О проекте

Этот репозиторий содержит исходный код и контент для статического сайта, который генерируется специальным Python-движком. Сайт состоит из статических HTML, CSS, JavaScript файлов, что обеспечивает высокую скорость загрузки и безопасность.


## ⚡ Быстрый старт

### Предварительные требования

- Python 3.8 или выше
- pip (менеджер пакетов Python)

### Установка

1. Клонируйте репозиторий:
```bash
git clone https://github.com/your-username/your-static-site.git
cd your-static-site
Установите зависимости:

bash
pip install -r requirements.txt
Генерация сайта
bash
# Генерация сайта
python generate.py

# Или с дополнительными опциями
python generate.py --clean --minify
После выполнения команды сгенерированные файлы будут доступны в папке build/.

Локальный просмотр
Для просмотра сгенерированного сайта локально:

bash
# Используя Python HTTP сервер
cd build
python -m http.server 8000

# Или используя serve (если установлен)
npx serve build
Затем откройте http://localhost:8000 в браузере.


📝 Добавление контента
Создание новой страницы
Создайте Markdown файл в src/content/:

markdown
# Заголовок страницы

Дата: 2024-01-01
Автор: Ваше Имя

Содержание страницы...
Перегенерируйте сайт:

bash
python generate.py
Добавление статических файлов
Поместите файлы в соответствующие папки:

CSS/JS: src/static/css/, src/static/js/

Изображения: src/static/images/

Другие ресурсы: src/static/assets/

🎨 Кастомизация
Изменение темы
Редактируйте файлы в:

src/templates/ - HTML шаблоны

src/static/css/ - стили

Добавление функциональности
Расширьте движок, модифицируя файлы в папке engine/.

📦 Деплой
GitHub Pages
Сгенерируйте сайт: python generate.py

Закоммитьте папку build/

Настройте GitHub Pages на папку build/

Netlify
Добавьте команду сборки в настройках:

bash
pip install -r requirements.txt && python generate.py
Укажите папку публикации: build

Другие платформы
Скопируйте содержимое папки build/ на любой хостинг, поддерживающий статические файлы.

🤝 Разработка
Установка для разработки
bash
git clone https://github.com/your-username/your-static-site.git
cd your-static-site
pip install -r requirements.txt
pip install -e .
Запуск тестов
bash
python -m pytest tests/
📄 Лицензия


