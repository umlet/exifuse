
@echo off

set "script_dir=%~dp0"
set "file_path=%script_dir%exifuse"

if "%~1"=="" (
    julia --color=yes --startup-file=no --load %file_path% -i
    exit /b %errorlevel%
) else (
    julia --color=yes --startup-file=no %file_path% -- %*
    exit /b %errorlevel%
)







