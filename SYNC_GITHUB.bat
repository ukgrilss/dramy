@echo off
title Sincronizando com GitHub...
color 0A

echo ==================================================
echo      SALVANDO E ENVIANDO PARA O GITHUB
echo ==================================================
echo.

:: 1. Adiciona todos os arquivos
echo [1/3] Adicionando arquivos...
git add .

:: 2. Faz o commit
echo [2/3] Salvando alteracoes...
git commit -m "Update automatico: %date% - %time%"

:: 3. Envia para o servidor
echo [3/3] Enviando para a nuvem...
git push

echo.
echo ==================================================
echo      SUCESSO! SEU CODIGO ESTA NO GITHUB.
echo ==================================================
echo.
pause
