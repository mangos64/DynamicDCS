@ECHO OFF

echo Loading databases into MongoDB

SET SCRIPT_DIR=%~dp0

for /f "delims=" %%D in ('dir /b /a-d') do (
    echo %%~fD
)