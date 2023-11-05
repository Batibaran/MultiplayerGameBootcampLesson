@echo off
setlocal enabledelayedexpansion

set /p count=Enter the number of times to run the game: 

:resolution_menu
echo Select a resolution preset:
echo 1. 1024x576
echo 2. 1920x1080
echo 3. 1280x720
set /p choice=Enter the number of the desired resolution preset:

if "%choice%"=="" goto resolution_menu
if "%choice%"=="1" (
    set width=1024
    set height=576
) else if "%choice%"=="2" (
    set width=1920
    set height=1080
) else if "%choice%"=="3" (
    set width=1280
    set height=720
) else (
    echo Invalid choice. Please enter a valid option.
    goto resolution_menu
)

for /l %%i in (1, 1, %count%) do (
    start "" "%cd%\Build\MultiplayerGameBootcampLesson.exe" -screen-width !width! -screen-height !height!
)

endlocal
