@echo off
cd /d "%~dp0"

echo Iniciando Backend (.NET API)...
start /min "Backend" cmd /k "cd backend && dotnet run"

echo Iniciando Frontend (Next.js)...
start /min "Frontend" cmd /k "cd frontend && npm run dev"

echo Aguardando inicialização dos servidores...
timeout /t 5 /nobreak >nul

echo Abrindo navegador...
start http://localhost:3000