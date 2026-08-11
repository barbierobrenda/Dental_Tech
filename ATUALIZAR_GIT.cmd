@echo off
setlocal
cd /d "%~dp0"

echo ================================================
echo      ATUALIZAR DENTAL TECH NO GITHUB
echo ================================================
echo.

git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
  echo ERRO: Esta pasta nao contem o repositorio Git ^(.git^).
  echo Copie os arquivos atualizados para a sua pasta clonada do Dental_Tech
  echo e execute este arquivo novamente dentro dela.
  pause
  exit /b 1
)

git add index.html sw.js manifest.json logo.png icon-192.png icon-512.png "COMO INSTALAR.txt" ATUALIZAR_GIT.cmd

git diff --cached --quiet
if not errorlevel 1 (
  echo Nenhuma alteracao nova para enviar.
  pause
  exit /b 0
)

git commit -m "Adiciona modo escuro ao Dental Tech"
if errorlevel 1 goto :erro

git push origin main
if errorlevel 1 goto :erro

echo.
echo Atualizacao enviada ao GitHub com sucesso.
pause
exit /b 0

:erro
echo.
echo ERRO ao atualizar o GitHub. Confira a mensagem acima.
pause
exit /b 1
