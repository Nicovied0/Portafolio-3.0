
@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Prueba controlada: primera semana de 2024
set "START=2024-01-01"
set "DAYS=7"

REM Validar que estamos dentro de un repositorio Git
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo ERROR: Ejecuta el script dentro del repositorio de prueba.
    exit /b 1
)

REM Comprobar que no se use accidentalmente el portafolio
for /f "delims=" %%R in ('git remote get-url origin 2^>nul') do set "REMOTE=%%R"
echo Repositorio remoto: !REMOTE!
echo.

echo Este script es para validar fechas en un periodo corto.
echo No publica nada en GitHub.
echo.

exit /b 0
