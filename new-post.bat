@echo off
echo ========================================
echo    Create New Post
echo ========================================
echo.

set /p title="Enter post title: "
if "%title%"=="" (
    echo ERROR: Title cannot be empty
    pause
    exit /b 1
)

echo.
echo Creating new post: %title%
echo.

"C:\Program Files\nodejs\npx.cmd" hexo new "%title%"

echo.
echo Post created successfully!
echo You can find it in: source/_posts/
echo.
pause
