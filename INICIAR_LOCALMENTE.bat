@echo off
echo ===================================================
echo   INICIANDO O CINEFY (LOCALHOST)
echo ===================================================
echo.
echo 1. Verificando dependencias...
call npm install
echo.
echo 2. Iniciando servidor...
echo.
echo    ACESSE EM SEU NAVEGADOR: http://localhost:5173
echo.
call npm run dev
pause
