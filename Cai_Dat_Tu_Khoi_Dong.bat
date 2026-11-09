@echo off
title Cai Dat Tu Khoi Dong TikTok Live Clock
echo ========================================================
echo   CAI DAT TU DONG KHOI DONG CUNG WINDOWS
echo ========================================================
echo.
set "TARGET_DIR=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "BAT_NAME=Run_TikTok_Clock.bat"

echo Dang tao file khoi chay trong thu muc Startup...
echo @echo off > "%TARGET_DIR%\%BAT_NAME%"
echo start "" "%~dp0tiktok-clock-overlay.html?clean=1" >> "%TARGET_DIR%\%BAT_NAME%"

echo.
echo [THANH CONG!] Dong ho da duoc cai dat tu khoi dong cung Windows!
echo Moi khi ban bat may, dong ho se tu dong hien thi.
echo.
pause
