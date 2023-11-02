@echo off
setlocal enabledelayedexpansion

set /p count=Enter the number of times to run the game: 

for /l %%i in (1, 1, %count%) do (
    start %cd%\Build\MultiplayerGameBootcampLesson.exe
)

endlocal
