@echo off
title Go Bo Tu Khoi Dong TikTok Live Clock
echo ========================================================
echo   GO BO TU KHOI DONG CUNG WINDOWS
echo ========================================================
echo.
set "TARGET_DIR=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "BAT_NAME=Run_TikTok_Clock.bat"

if exist "%TARGET_DIR%\%BAT_NAME%" (
    del "%TARGET_DIR%\%BAT_NAME%"
    echo [THANH CONG!] Da xoa tu khoi dong thanh cong!
) else (
    echo Khong tim thay file tu khoi dong trong he thong.
)
echo.
pause
