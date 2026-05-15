# Гайд по настройке для новичков

Пошаговая инструкция для тех, кто никогда не работал с терминалом и Claude Code.

## Что вам понадобится

- Компьютер с macOS, Windows или Linux
- Claude Code (установленный через терминал)
- Аккаунт на GitHub (бесплатный)
- Любой AI-генератор изображений (GPT, Nano Banana, Midjourney и т.д.)
- Любой AI-генератор видео (Seedance, Kling, Runway, Pika, Veo и т.д.)

## Шаг 1: Клонируйте репозиторий

```bash
git clone https://github.com/ВАШ_НИК/ai-storyboard-video-starter.git
cd ai-storyboard-video-starter
```

## Шаг 2: Запустите настройку

```bash
tools/setup-environment.sh --open
```

Это создаст:
- `projects/demo-walkthrough/` — готовый пример для изучения
- `projects/my-first-video/` — пустой проект для вашего видео

## Шаг 3: Изучите пример

Откройте папку `projects/demo-walkthrough/` и просмотрите каждый этап по порядку.

## Шаг 4: Начните свой проект

```bash
tools/create-project.sh мой-первый-ролик
```

Или просто скопируйте `templates/project-template/` и переименуйте.

## Шаг 5: Работайте с Claude Code

Откройте терминал в папке проекта и скажите Claude Code:

```
Помоги написать креативный бриф для рекламного ролика парфюма.
Положи черновик в 01-creative-brief/attempts/
```

## Если что-то пошло не так

- Скрипт не запускается: выполните `chmod +x tools/*.sh`
- Нет прав: запустите с `bash tools/setup-environment.sh --open`
- Git не настроен: выполните `git config --global user.name "Ваше Имя"` и `git config --global user.email "ваш@email.com"`
