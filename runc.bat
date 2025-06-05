@echo off
setlocal

:: Check if an argument is provided
if "%~1"=="" (
    echo Usage: %~nx0 source_file
    exit /b 1
)

:: Compile the program using cc
wsl cc %1.c -o %1

:: Check if compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b 1
)

:: Run the compiled program
wsl ./%1

endlocal
