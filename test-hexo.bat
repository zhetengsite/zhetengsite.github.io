@echo off
echo ========================================
echo    Hexo Blog Test
echo ========================================
echo.

REM Set Node.js path
set "NODEJS=C:\Program Files\nodejs"

echo Checking Node.js...
if not exist "%NODEJS%\node.exe" (
    echo ERROR: Node.js not found at %NODEJS%
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo Node.js found: %NODEJS%
echo.

echo Installing dependencies...
"%NODEJS%\npm.cmd" install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo Testing Hexo...
"%NODEJS%\npx.cmd" hexo version
if %errorlevel% neq 0 (
    echo ERROR: Hexo not working
    pause
    exit /b 1
)

echo.
echo ========================================
echo    Test Successful!
echo ========================================
echo.
echo You can now run:
echo   - npx hexo server    (start local server)
echo   - npx hexo generate  (build static files)
echo.
pause
