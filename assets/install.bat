@echo off
chcp 65001 >nul 2>nul
echo ==========================================
echo    TruwasNexus — Установка зависимостей
echo ==========================================
echo.

:: Проверка ffmpeg
echo [1/2] Проверка ffmpeg...
where ffmpeg >nul 2>nul
if errorlevel 1 (
    echo.
    echo ВНИМАНИЕ: ffmpeg не найден!
    echo.
    echo ffmpeg нужен для обработки видео.
    echo.
    echo Как установить:
    echo   1. Скачайте ffmpeg: https://www.gyan.dev/ffmpeg/builds/
    echo      ^(выберите "ffmpeg-release-essentials.zip"^)
    echo   2. Распакуйте архив в удобную папку, например C:\ffmpeg
    echo   3. Добавьте путь к папке bin в PATH:
    echo      - Нажмите Win+R, введите sysdm.cpl
    echo      - Вкладка "Дополнительно" -^> "Переменные среды"
    echo      - В "Системные переменные" найдите Path, нажмите "Изменить"
    echo      - Нажмите "Создать" и добавьте: C:\ffmpeg\bin
    echo      - Нажмите OK везде
    echo   4. Перезапустите компьютер
    echo   5. Запустите этот файл снова для проверки
    echo.
) else (
    echo ffmpeg найден — OK
)

:: Проверка Playwright browsers
echo.
echo [2/2] Проверка Playwright...
where playwright >nul 2>nul
if errorlevel 1 (
    echo Playwright не найден, пропускаю...
    echo ^(Будет установлен автоматически при первом использовании^)
) else (
    echo Playwright найден — OK
)

echo.
echo ==========================================
echo    Проверка завершена!
echo ==========================================
echo.
echo Если все зависимости установлены — запустите TruwasNexus.
echo.
pause
