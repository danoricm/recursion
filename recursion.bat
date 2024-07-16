@echo off
setlocal enabledelayedexpansion

set /p Input=Enter an integer: 

call :Factorial %Input%
echo Factorial: %Result%

goto :eof

:Factorial
setlocal
set /a n=%1
if %n% leq 1 (
    endlocal & set "Result=1"
    exit /b
)
set /a n-=1
call :Factorial !n!
set /a Result=%1 * Result
endlocal & set "Result=%Result%"
exit /b
