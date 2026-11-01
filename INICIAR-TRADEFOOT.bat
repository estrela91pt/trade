@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================
echo       TRADEFOOT AI V4.5 - PRO SIMULATOR
echo ==========================================

where node >nul 2>nul
if errorlevel 1 (
  echo ERRO: Instala Node.js 22 LTS: https://nodejs.org/
  pause
  exit /b 1
)

for /f "tokens=1 delims=." %%v in ('node -p "process.versions.node"') do set NODE_MAJOR=%%v
if %NODE_MAJOR% GEQ 24 (
  echo.
  echo ERRO: Estás a usar Node.js %NODE_MAJOR%.
  echo Esta versão usa better-sqlite3 e requer Node.js 22 LTS
  echo para instalar os binários pré-compilados sem Visual Studio C++.
  echo.
  echo 1. Instala Node.js 22 LTS em https://nodejs.org/
  echo 2. Fecha e volta a abrir esta janela.
  echo 3. Executa novamente este ficheiro.
  pause
  exit /b 1
)

if not exist .env (
  copy .env.example .env >nul
  echo Foi criado o ficheiro .env.
  echo Abre-o e substitui JWT_SECRET por uma chave aleatoria com 32 ou mais caracteres.
  echo Define ADMIN_EMAIL e ADMIN_PASSWORD para criar a conta inicial.
  notepad .env
  echo Guarda o ficheiro e volta a executar este BAT.
  pause
  exit /b 0
)

echo.
echo A verificar e instalar dependencias...
call npm install --no-audit --no-fund
if errorlevel 1 (
  echo.
  echo A instalacao falhou. Fecha outras janelas/editores que possam bloquear node_modules.
  echo Se existir node_modules, apaga essa pasta e volta a executar este ficheiro.
  pause
  exit /b 1
)

echo.
echo A iniciar o servidor. Nao feches esta janela enquanto usares a aplicacao.
call npm start
pause
