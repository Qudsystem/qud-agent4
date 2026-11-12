@echo off
echo Fixing GUI installation...
if exist index.tsx del index.tsx
call npm install
echo.
echo If installation was successful, you can now run: npm run dev
pause
